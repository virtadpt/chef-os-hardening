
directory '/etc/skel/.ssh' do
    mode '0700'
    owner 'root'
    group 'root'
end

file '/etc/skel/.ssh/authorized_keys' do
    mode '0600'
    owner 'root'
    group 'root'
end

