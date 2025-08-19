## Схемы баз данных учебных проектов на www.sql-ex.ru
### Development Environment

1. JDK 21
2. PostgreSql
3. Docker

* Склонируйте проект. 
````
  git clone git@github.com:boomzin/dbservice.git
````
* Перед первым запуском создайте папку для файлов бд командой:
````
  cd dbservice && \
  mkdir -pv ./docker/pgdata
````
* Запустите контенеры:
````
docker compose up -d --force-recreate
````
После завершения запуска контейнер с postgresql и контейнер с приложением.
Бд будет доступна на стандартном порту:
````
jdbc:postgresql://localhost:5432/db_service
````
Учетная запись для подключения:
login:    boomzin
password: boomzin

Остановить контейнеры:
````
docker compose down -v
````
Если нужно обнулить значения в бд нужно остановить контейнеры и пересоздать каталог с файлами бд:
````
  sudo rm -rf ./docker/pgdata && \
  mkdir -pv ./docker/pgdata
````
