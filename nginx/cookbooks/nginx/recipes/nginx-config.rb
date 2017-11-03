service 'nginx' do
	action :enable
	retries 3
end
