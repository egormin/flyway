## How to use Flyway

1) Download Flyway. `https://flywaydb.org/getstarted/download`
2) Unarchive
3) Change config `conf/flyway.conf`:
```
flyway.url=jdbc:mariadb://192.168.138.189:3306/flw
flyway.user=fly
flyway.password=fly
```
4) Create baseline with command: 
```
fly -baselineVersion=1.0.0 baseline
```
Will be created schema version file.

5) Create migration files in sql folders with names V_1.0x__person.sql

6) Apply changes with command
```
flyway migrate
```
All new versions will be applied. Versions applied before will be skipped


To apply target version use command:
```
flyway -target=1.0.2 migrate
```
