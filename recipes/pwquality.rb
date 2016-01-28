
cookbook_file '/etc/security/pwquality.conf' do
    source 'pwquality.conf'
    mode '0644'
    owner 'root'
    group 'root'
    only_if 'test -f /etc/security/pwquality.conf'
end

