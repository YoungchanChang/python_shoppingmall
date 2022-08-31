```
# into docker
docker exec -it beginner_postgres-py-mall_1 /bin/bash

# dump
pg_dump -d test -U test -Fp -v > test_dump.sql

pg_dump  -U test -s -Fp -c --if-exists -v test > test_dump_schema.sql

# cp
docker cp beginner_postgres-py-mall_1:/test_dump.sql .

docker cp beginner_postgres-py-mall_1:/test_dump_schema.sql .

# restor
pg_restore -d test -U test -C -Fc -v test_dump.dump
```