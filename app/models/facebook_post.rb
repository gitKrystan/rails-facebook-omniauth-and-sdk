class FacebookPost
  def self.create_post(user_id, user_token, message)
    begin
      response = RestClient::Request.new(
        method: :post,
        url: "https://graph.facebook.com/#{user_id}/feed?message=#{message}&access_token=#{user_token}",
      ).execute
    rescue RestClient::BadRequest => error
      puts '*!***~*~*~**(~(&~(*&(*&&))))'
      puts JSON.parse(error.response)['message']
      false
    end
  end
end

# ?message=#{message}
# &access_token=#{user_token}
