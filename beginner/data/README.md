```
# into docker
docker exec -it beginner_postgres-py-mall_1 /bin/bash

# dump
pg_dump -d test -U test -Fp -v > test_dump.sql

# cp
docker cp beginner_postgres-py-mall_1:/test_dump.sql .

# restor
pg_restore -d test -U test -C -Fc -v test_dump.dump
```