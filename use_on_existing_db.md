## How to use Flyway on existing DB

1) Export backup of existing DB
2) Put it in sql folder and name it for example V1_0_1__Database_initial
3) Create baseline with command: 
```
fly -baselineVersion=1.0.0 baseline
```
4) Apply changes with command
```
flyway migrate
```
