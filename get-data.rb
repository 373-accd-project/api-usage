require 'rest_client'
require 'json'

url = 'https://api.bls.gov/publicAPI/v1/timeseries/data/'
response = RestClient.post(url,
                           {'seriesid' => ['CUUR0000SA0'],
                            'startyear' => '2010',
                            'endyear' => '2020',
                           }.to_json,
                           :content_type => 'application/json')
parsed_json = JSON(response)

puts JSON.pretty_generate(parsed_json["Results"])
