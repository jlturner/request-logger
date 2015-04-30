require 'json'

run lambda { |env|
  env_json = env.to_json
  # Write the incoming request's env to std out
  puts env_json
  # Respond with the env with status code 200
  [200,{'Content-Type'=>'text/plain'},StringIO.new(env_json)]
}
