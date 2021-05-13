pg_ctl -D ./data init
sleep 1
nohup pg_ctl -D ./data start >pg.log &
sleep 2
createdb peopleDatabase
createuser postgres
. ./setenv.psql
psql -f peopleinfo.sql
echo "To run test:"
echo "  go run main.go personHandler.go store.go"
