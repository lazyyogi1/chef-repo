#package 'java'
#package 'tomcat'

#service 'tomcat' do
#	action :stop
#end

script 'downlaod jenkins.war' do 
	interpreter "bash"
	code <<-EOH
	yum install tomcat -y
	yum install java -y
	service tomcat stop
	wget https://updates.jenkins-ci.org/download/war/2.58/jenkins.war . 
	cp jenkins.war /usr/share/tomcat/webapps/
	service tomcat start
	EOH
end
