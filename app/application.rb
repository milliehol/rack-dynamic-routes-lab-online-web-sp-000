class Application
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    @@items = []
 
    if req.path.match(/items/)
 
      items_title = req.path.split("/items/").last 
      item = @@items.find{|s| s.title == song_title}
 
      resp.write {#items.price}
    end
    else
      resp.write "Route not found"
      resp.status = 404
    end
 
    resp.finish
  end
end