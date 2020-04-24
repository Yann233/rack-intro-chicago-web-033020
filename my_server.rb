# We could make things look a bit more like a web server 
# by taking our server code out of the rackup file 
# and put it into a class file
class MyServer
  
  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
  end
 
  def pretty_response
    (Time.now.to_i % 2).zero? ?  ["<em>Hello</em>"] : ["<strong>Hello</strong>"]
   #If the present/current time, as an Integer, is even
   # T => the output is emphatic (em)
   # F => the output is strong
  end

end