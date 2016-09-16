require 'rest_client'
# require 'json'

class BureauLaborStat

	url = 'http://api.bls.gov/publicAPI/v2/timeseries/data/'
	response = RestClient.post(url,
	               {'seriesid => ['seriesid'],
	                'startyear' => '1995',
	                'endyear'   => '1998'
	               }.to_json,
	               :content_type => 'application/json')

end