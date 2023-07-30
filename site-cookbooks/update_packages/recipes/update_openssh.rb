bash "update-openssh" do
	code <<-EOH
	mkdir /tmp/openssh_rpms
	curl -sL http://raven-pub-repo.s3.amazonaws.com/x86_64/openssh-9.3p1-2.el6.x86_64.rpm -o /tmp/openssh_rpms/openssh-9.3p1-2.el6.x86_64.rpm
	curl -sL http://raven-pub-repo.s3.amazonaws.com/x86_64/openssh-askpass-9.3p1-2.el6.x86_64.rpm -o /tmp/openssh_rpms/openssh-askpass-9.3p1-2.el6.x86_64.rpm
	curl -sL http://raven-pub-repo.s3.amazonaws.com/x86_64/openssh-clients-9.3p1-2.el6.x86_64.rpm -o /tmp/openssh_rpms/openssh-clients-9.3p1-2.el6.x86_64.rpm 
	curl -sL http://raven-pub-repo.s3.amazonaws.com/x86_64/openssh-debuginfo-9.3p1-2.el6.x86_64.rpm -o /tmp/openssh_rpms/openssh-debuginfo-9.3p1-2.el6.x86_64.rpm
	curl -sL http://raven-pub-repo.s3.amazonaws.com/x86_64/openssh-server-9.3p1-2.el6.x86_64.rpm  -o /tmp/openssh_rpms/openssh-server-9.3p1-2.el6.x86_64.rpm
	yum -y install /tmp/openssh_rpms/*
	rm -R /tmp/openssh_rpms
	EOH
end