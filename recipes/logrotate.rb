
cookbook_file '/etc/logrotate.d/syslog' do
    source 'syslog'
    mode '0644'
    owner 'root'
    group 'root'
end

