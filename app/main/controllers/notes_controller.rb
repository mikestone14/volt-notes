class NotesController < Volt::ModelController

  def add_note
    store._notes << Note.new(title: page._note_title, body: page._note_body)
    page._note_title = ""
    page._note_body = ""
    go "/notes"
  end

  def index
    page._note_title = ""
    page._note_body = ""
    self.model = :store
  end

  def visit_index(index)
    go "/notes/#{index}"
  end

  def new
    self.model = store._notes.buffer
  end

  def edit
    store._notes.find(_id: 2).then do |result|
      self.model = result[0].buffer
    end
  end

  def edit_note(index)
    go "/notes/#{index}/edit"
  end

  def new_note
    go "/notes/new"
  end

  def remove_note(note)
    store._notes.delete(note)
  end

  def current_note
    store._notes[params._index.or(0).to_i]
  end
end
