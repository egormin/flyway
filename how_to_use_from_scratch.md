## How to use Flyway

1) Download Flyway. `https://flywaydb.org/getstarted/download`
2) Unarchive
3) Change config `conf/flyway.conf`:
```
flyway.url=jdbc:mariadb://192.168.138.189:3306/flw
flyway.user=fly
flyway.password=fly
```
4) Create baseline with command: `fly -baselineVersion=1.0.0 baseline`.
Will be created schema version file.
