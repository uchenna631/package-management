# install Java JDK 1.8+ as a pre-requisit for maven to run.
sudo hostname maven
# sudo su - ec2-user
cd /opt
sudo yum install wget nano tree unzip git-all -y
sudo yum install java-11-openjdk-devel java-1.8.0-openjdk-devel -y
java -version
git --version
#Step1 Download the Maven Software
sudo wget https://dlcdn.apache.org/maven/maven-3/3.8.8/binaries/apache-maven-3.8.8-bin.zip
sudo unzip apache-maven-3.8.8-bin.zip
sudo rm -rf apache-maven-3.8.8-bin.zip
sudo mv apache-maven-3.8.8/ maven
#vi ~/.bash_profile  and add the home directory in the opt file
echo "export M2_HOME=/opt/maven" >> ~/.bash_profile
echo "export PATH=$PATH:$M2_HOME/bin" >> ~/.bash_profile
#Refresh the profile file and verify if maven is running
source ~/.bash_profile
mvn -version
