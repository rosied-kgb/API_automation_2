Given(/^I want to get the users$/) do
  @request = 'get'
end

Then(/^the response is a success$/) do
  p @response.code
  p @response.message
  expect(@response.code).to eq('200')
  expect(@response.message).to eq('OK')

end

Given(/^I want to post a user$/) do
  @request = 'post'
  @json = create_user
end

Given(/^I want to patch a user$/) do
  @request = 'patch'
  @json = update_user


end

When(/^I send an api request$/) do
  case @request.downcase
    when 'get'
      send_get(TestConfig['host'], '/api/users')
    when 'post'
      send_post(TestConfig['host'], '/api/users', @json)
    when 'patch'
      send_patch(TestConfig['host'], '/api/users/1', @json)
  end
end

Then(/^the user is added$/) do
  p @response.code
  p @response.message
  expect(JSON.parse(@response.body)['address'][0]['city']).to eq(@user.address[0].city)
  id = JSON.parse(@response.body)['id']
  p "Your User Id is: #{id}"
end


Then(/^the user is updated$/) do
  pending
end