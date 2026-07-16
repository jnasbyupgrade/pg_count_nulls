include pgxntool/base.mk

# Temporary hack
testdeps: $(wildcard test/*/*.sql) $(wildcard test/*.sql) # Be careful not to include directories in this

# Install the oldest historical version's full install script so the upgrade
# test in test/build/upgrade.sql can CREATE EXTENSION count_nulls VERSION '0.9.6'.
# Not covered by base.mk's DATA wildcard, which only picks up upgrade scripts
# (sql/*--*--*.sql) and the current version file.
DATA += sql/count_nulls--0.9.6.sql
