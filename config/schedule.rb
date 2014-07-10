
set :output, "log/cron.log"

#set :whenever_roles, ["worker_svr","test"]
#set :roles, ["worker_svr","test"]

every 1.minute do
  rake 'cron:hi'
end

every :day, :roles => [:web1,:web2] do
  rake 'cron:web'
end

every 1.minute, :roles => [:worker1,:worker2] do
  rake 'cron:worker'
end