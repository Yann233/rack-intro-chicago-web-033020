require 'rack'
 
# Something that responds to call, that's what Rack demands
class MyServer

  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
  end
 
  def pretty_response
  (Time.now.to_i % 2).zero? ?  ["<em>Yolo</em>"] : ["<strong>Yolo</strong>"]
 # If the present/current time, as an Integer, is even
 # T => the output is emphatic (em)
 # F => the output is strong
  end

end
 
run MyServer.new
