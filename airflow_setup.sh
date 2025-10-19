mkdir -p ./airflow/dags ./airflow/logs ./airflow/plugins ./airflow/config
echo -e "AIRFLOW_UID=$(id -u)" > .env
chmod -R g+w ./airflow
sudo docker compose run airflow-cli airflow config list
sudo docker compose up airflow-init
sudo docker compose up
