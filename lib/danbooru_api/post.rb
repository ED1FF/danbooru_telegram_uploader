module DanbooruApi
  class Post < DanbooruApi::Base
    def self.find(id)
      request = conn.get("posts/#{id}.json")
      JSON.parse(request.body)
    end

    def self.all(*args)
      request = conn.get('posts.json', *args)
      JSON.parse(request.body)
    end
  end
end
