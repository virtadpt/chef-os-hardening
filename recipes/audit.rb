
package 'audit'

cookbook_file '/etc/audit/audit.rules' do
    source 'audit.rules'
end

cookbook_file '/etc/audit/auditd.conf' do
    source 'auditd.conf'
end

execute 'generate_audit_rules' do
    command 'find / -xdev \( -perm -4000 -o -perm -2000 \) -type f | awk \'{print "-a always,exit -F path=" $1 " -F perm=x -F auid>=500 -F auid!=4294967295 -k privileged"}\' >> /etc/audit/audit.rules'
    creates '/etc/audit/.auditd.configured'
end

execute 'make_auditd_rules_immutable' do
    command 'echo "-e 2" >> /etc/audit/audit.rules'
    creates '/etc/audit/.auditd.locked'
end

service 'auditd' do
    action [ :enable, :start ]
end

