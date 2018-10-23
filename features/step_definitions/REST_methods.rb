def send_get(host, path)
  url = URI(host + path)
  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE
  request = Net::HTTP::Get.new(url)
  request['Content-Type'] = 'application/json'
  @response = http.request(request)
end

def create_user
  @user = User.new
  JSON.generate(@user)
end

def send_post(host, path, json)
  url = URI(host + path)
  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE
  request = Net::HTTP::Post.new(url)
  request['Content-Type'] = 'application/json'
  request.body = json
  @response = http.request(request)
end

def update_user
  @user = User
  @user.name = "Tom"
  JSON.generate(@user)

end

def send_patch(host, path, json)
  url = URI(host + path)
  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE
  request = Net::HTTP::Patch.new(url)
  request['Content-Type'] = 'application/json'
  request.body = json
  @response = http.request(request)
end