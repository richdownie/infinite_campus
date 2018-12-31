Then /I DELETE my widgets via the API/i do
  @request_url = URI.encode(@domain + "/api/v1/widgets?fsar_api_key=#{@fsar_api_key}".strip)
  puts @response = HTTParty.delete(@request_url)
end

Then /I GET my Widget Count and verify it equals "(.*)"/i do |expected_count|
  @request_url = URI.encode(@domain + "/api/v1/widget_count?fsar_api_key=#{@fsar_api_key}".strip)
  puts @response = HTTParty.get(@request_url)
  expect(@response["data"]).to eq(expected_count.to_i)
end



