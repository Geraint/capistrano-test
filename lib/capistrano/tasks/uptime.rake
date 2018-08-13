desc "Check uptime"
task :uptime do
  on roles(:all) do |host|
    execute :uptime
  end
end


