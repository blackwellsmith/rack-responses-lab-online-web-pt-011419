require 'pry'
class Application

  def call(env)
    resp = Rack::Response.new
    
    time = Time.hour.now
    binding.pry
    if time >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning"
    end
    resp.finish
  end
end