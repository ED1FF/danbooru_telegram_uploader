module DanbooruApi
  class Base
    def self.conn
      Faraday.new(
        url: 'https://danbooru.donmai.us/',
        params: { login: ENV['DANBOORU_USER_NAME'], api_key: ENV['DANBOORU_API_TOKEN'] },
        headers: { 'Content-Type' => 'application/json' }
      )
    end
  end
end
