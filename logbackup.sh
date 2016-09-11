docker run --rm --volumes-from apache -v ~/backups:/backup debian:8.5 tar -czvf /backup/apachelogs.tar.gz -C /usr/local/apache2/logs/ .
docker run --rm --volumes-from mysql -v ~/backups:/backup debian:8.5  tar -czvf /backup/mysqllogs.tar.gz -C /var/log/mysql/ .
current_date=$(date +"%Y%m%d_%H%M%S")
mkdir ~/backups/$current_date/
mv  ~/backups/apachelogs.tar.gz ~/backups/$current_date/
mv  ~/backups/mysqllogs.tar.gz ~/backups/$current_date/
aws s3 cp  /home/ubuntu/backups/$current_date/  s3://YOUR_S3_BUCKET/$current_date/ --recursive

