bash 'tomcat_ins' do
  code <<-EOH
yum install tomcat -y
yum install java -y
wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war .
cp jenkins.war /usr/share/tomcat/webapps/ 
service tomcat stop
service tomcat start
    EOH
end
