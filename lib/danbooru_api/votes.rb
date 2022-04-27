module DanbooruApi
  class Votes < DanbooruApi::Base
    def self.all(*args)
      request = conn.get('post_votes.json', { search: { user_id: ENV['DANBOORU_USER_ID'] } }.merge(*args))
      JSON.parse(request.body)
    end
  end
end
