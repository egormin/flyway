## Flyway commands:

 - `info` Prints the details and status information about all the migrations. Info lets you know where you stand. At a glance you will see which migrations have already been applied, which other ones are still pending, when they were executed and whether they were successful or not.
 - `baseline` Baselines an existing database, excluding all migrations upto and including baselineVersion.Baseline is for introducing Flyway to existing databases by baselining them at a specific version. The will cause Migrate to ignore all migrations upto and including the baseline version. Newer migrations will then be applied as usual.
- `clean` Drops all objects in the configured schemas.Clean is a great help in development and test. It will effectively give you a fresh start, by wiping your configured schemas completely clean. All objects (tables, views, procedures, ...) will be dropped.
**Needless to say: do not use against your production DB!**
- `migrate` Migrates the schema to the latest version. Flyway will create the metadata table automatically if it doesn't exist.Migrate is the centerpiece of the Flyway workflow. It will scan the filesystem or your classpath for available migrations. It will compare them to the migrations that have been applied to the database. If any difference is found, it will migrate the database to close the gap.
Migrate should preferably be executed on application startup to avoid any incompatibilities between the database and the expectations of the code.
- `validate` Validate helps you verify that the migrations applied to the database match the ones available locally.
This is very useful to detect accidental changes that may prevent you from reliably recreating the schema.
- `repair` Repairs the metadata table. Repair is your tool to fix issues with the metadata table. It has two main uses: Remove failed migration entries (only for databases that do NOT support DDL transactions) and Realign the checksums of the applied migrations to the ones of the available migrations


