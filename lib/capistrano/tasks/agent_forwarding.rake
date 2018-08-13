desc "Check if agent forwarding is working"
task :forwarding do
  on roles(:all) do |host|
    if test("env | grep SSH_AUTH_SOCK")
      info "Agent forwarding is up to #{host}"
    else
      error "Agent forwarding is NOT up to #{host}"
    end
  end
end

