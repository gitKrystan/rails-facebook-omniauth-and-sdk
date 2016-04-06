class FacebookPost
  def self.create_post(user_id, user_token, message)
    @graph = Koala::Facebook::API.new(user_token, ENV['FB_APP_SECRET'])
    @graph.put_wall_post(message)
  end
end

# ?message=#{message}
# &access_token=#{user_token}
