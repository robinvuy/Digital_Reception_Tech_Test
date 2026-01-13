require 'json'
require 'http'

API_KEY = "yzhmzvrXzYfEfimGAYTimwz-Lhqew6wKhzpXMLB_dsdQ"
API_URL = "https://api-demo.dreception.com/v1/c/feedback"

params = {
  key: API_KEY,
  location_id: 1,  
  month: 0         
}

response = HTTP.get(API_URL, params: params)

if response.status.success?
  feedback = JSON.parse(response.to_s)

  summary = {}

  feedback.each do |data|
    question = data['question']
    answer = data['answer']

    summary[question] ||= Hash.new(0)
    summary[question][answer] += 1
  end

  puts JSON.pretty_generate(summary)
end
