## Flyway commands:

 - `info` Prints the details and status information about all the migrations. Info lets you know where you stand. At a glance you will see which migrations have already been applied, which other ones are still pending, when they were executed and whether they were successful or not.
 - `baseline` Baselines an existing database, excluding all migrations upto and including baselineVersion.Baseline is for introducing Flyway to existing databases by baselining them at a specific version. The will cause Migrate to ignore all migrations upto and including the baseline version. Newer migrations will then be applied as usual.
