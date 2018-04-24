class Application

  def call(env)
    resp = Rack::Response.new #don't touch
    # resp.write "Hello, World"
    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    if num_1==num_2 & num_2==num_3
      resp.write "you Win!"
    else
      resp.write "you Win!"
    end
    
    resp.finish #don't touch
  end

end
