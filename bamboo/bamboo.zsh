export PASSWORD_STORE_DIR=.

deploy_csv(){
  local CSV=/Users/joejuzl/Downloads/JIRA.csv
  if [ -f $CSV ]; then
    open $CSV
    local DROPBOX="/Users/joejuzl/Dropbox (Bamboo Limited)/Dept Development/Production Deploys/2017/$(date +"%Y-%m-%d")_$1.csv"
    echo $DROPBOX
    if ask; then
      cp $CSV "$DROPBOX"
      echo "Done!"
    else
      echo "Ok..."
    fi
  else
    echo "$CSV does not exist"
  fi
}

sql2csv(){
  in_production bam rds psql2csv --dbname=$1 --in-file $2.sql --out-file $2.csv
}
