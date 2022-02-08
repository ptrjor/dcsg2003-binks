#!/bin/bash
cockroach sql --insecure --host=localhost:26257
use bf;
select count(*) from users;
select count(*) from posts;
select count(*) from comments;
exit
