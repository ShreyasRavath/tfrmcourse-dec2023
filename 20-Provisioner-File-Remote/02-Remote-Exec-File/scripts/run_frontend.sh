yum update -y
yum install httpd -y
sleep 15
systemctl start httpd
systemctl enable httpd
mkdir -p /var/www/html/terraform
echo "Welcome to the world of Terraform- Edited by Shreyas on 19-12-2023 13:00" > /var/www/html/terraform/01-Hello.html
