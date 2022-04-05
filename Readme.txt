There are 4 Cloudformation template files, these files need to be executed in below order:
1. Bastian-Stack-CFT-1.1.yml
	It creates the Batian VPC and Bastian server for SSH access
	
2. NetworkAndIAM-Stack-CFT-1.1.yml
	It creates main application VPC, network configuration, IAM settings.
	
3. RDS-Stack-CFT-1.yml
	It creates RDS mysql database for ghost app.
	
4. App-Stack-CFT-1.2
	It creates application stack, EC2, Lb, etc.
	

Other files in the repository:
* deploy.sh
	A small script collects the required config files from S3 repository and executes deployment

