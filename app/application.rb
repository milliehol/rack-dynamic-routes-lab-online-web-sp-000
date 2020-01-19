class Application
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    @@items = []
 
    if req.path.match(/items/)
 
      item_title = req.path.split("/itemss/").last #turn /songs/Sorry into Sorry
      song = @@items.find{|s| s.title == song_title}
 
      resp.write {#items.price}
    end
    else
      resp.write "Route not found"
      resp.status = 404
    end
 
    resp.finish
  end
end