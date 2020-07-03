# BACKUP
sudo docker exec -t eno-landing-page_postgres_1 pg_dumpall -c -U postgres > dump_`date +%d-%m-%Y"_"%H_%M_%S`.sql
# RESTORE
cat your_dump.sql | sudo docker exec -i eno-landing-page_postgres_1 psql -U postgres
