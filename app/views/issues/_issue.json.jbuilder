json.extract! issue, :id, :title, :user_id, :task_id, :created_at, :updated_at
json.url issue_url(issue, format: :json)
