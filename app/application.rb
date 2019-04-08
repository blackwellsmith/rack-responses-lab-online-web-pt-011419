class Time

  def call(env)
    resp = Rack::Response.new
    
    time = Kernal.rand(1..24)
    
    if time >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning"
    end
    resp.finish
  end
end