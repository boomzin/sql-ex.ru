#!/bin/bash

set -e

/flyway/flyway -placeholderPrefix='#[' -placeholderSuffix=']' -user=boomzin -password=boomzin -url=jdbc:postgresql://postgres:5432/sql_ex_db -schemas=sql_ex_db -locations=filesystem:/flyway/sql/sqlexdb migrate