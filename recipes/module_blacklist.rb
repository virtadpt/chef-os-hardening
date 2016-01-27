
cookbook_file '/etc/modprobe.d/blacklist.conf' do
    source 'blacklist.conf'
    mode '0644'
    owner 'root'
    group 'root'
end

cookbook_file '/etc/modprobe.d/ipv6.conf' do
    source 'ipv6.conf'
    mode '0644'
    owner 'root'
    group 'root'
end

