
cookbook_file '/etc/ssh/sshd_config' do
    source 'sshd_config.rhel7'
    mode '0600'
    owner 'root'
    group 'root'
    only_if { platform_family?('rhel') || platform_family('centos')}
    only_if { node['platform_version'].to_f >= 7.0 }
end

file '/etc/ssh/sshd_banner' do
    mode '0644'
    owner 'root'
    group 'root'
end

