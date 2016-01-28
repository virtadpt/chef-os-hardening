
cookbook_file '/etc/ssh/sshd_config' do
    source 'sshd_config'
    mode '0600'
    owner 'root'
    group 'root'
end

file '/etc/ssh/sshd_banner' do
    mode '0644'
    owner 'root'
    group 'root'
end

