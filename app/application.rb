class Application

  def call(env)
    resp = Rack::Response.new #don't touch
    # resp.write "Hello, World"
    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    resp.write "#{num_1}\n"
    resp.write "#{num_2}\n"
    resp.write "#{num_3}\n"

    if num_1==num_2 && num_2==num_3
      resp.write "you Win!"
    else
      resp.write "you Lose!"
    end

    resp.finish #don't touch
  end

end
