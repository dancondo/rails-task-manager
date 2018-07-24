module TasksHelper
  def on?(task)
    "checked = 'on'" if task.completed
  end
end
