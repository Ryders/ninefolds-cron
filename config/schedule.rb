
set :output, "log/cron.log"

every 1.minute do
  rake 'cron:anything'
end

every 1.minute, roles: [:worker_svr] do
  rake 'cron:banking'
end