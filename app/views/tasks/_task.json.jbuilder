json.extract! task, :id, :title, :startdate, :enddate, :allday, :memo, :created_at, :updated_at
json.url task_url(task, format: :json)
