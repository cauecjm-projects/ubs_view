desc "Pings PING_URL to keep a dyno alive"
task :keep_herokuapp_alive do
  require 'net/http'

  uri = URI("http://www.#{Rails.application.secrets.domain_name}")
  Net::HTTP.get_response(uri)
end
