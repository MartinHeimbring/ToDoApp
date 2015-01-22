require 'rails_helper'

describe Todo, '#completed' do
  it 'return true if completed_at is set' do
    todo = Todo.new(completed_at: Time.current)
    expect(todo).to be_completed
  end

  it 'return false if completed_at is nil' do
    todo = Todo.new(completed_at: nil)
    expect(todo).to_not be_completed
  end

end

describe Todo, "#complete!" do
  it 'upadte completed_at' do
    todo = Todo.create!(completed_at: nil)

    todo.complete!

    todo.reload

    expect(todo).to be_completed
  end
end

describe Todo, "#incomplete!" do
  it 'sets completed_at to nil' do
    todo = Todo.create!(completed_at: Time.current)

    todo.mark_incomplete!

    todo.reload

    expect(todo).to_not be_completed
  end
end

