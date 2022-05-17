mkdir script
cd script
cp /vagrant/sql-task-web/docker-compose.yml .
cp /vagrant/sql-task-web/Dockerfile .
cp -r /vagrant/sql-task-web/db .
cp -r /vagrant/sql-task-web/db .
cp -r /vagrant/sql-task-web/app .

  # docker rm -f $(docker ps -aq) 
docker-compose up


# docker-compose up 


docker rm -f $(docker ps -aq)
docker rm -f $(docker ps -aq) &&  docker-compose up

# can connect (outside the container) using  :
mysql -uuser -p12345 -h0.0.0.0



select * from countries;
select * from currencies;
select * from credit_card_types;
select * from customers;
select * from transactions;
