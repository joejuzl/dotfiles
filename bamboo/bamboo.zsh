export PASSWORD_STORE_DIR=.
# For tmuxinator
export DISABLE_AUTO_TITLE=true

ask() {
  read "REPLY?Are you sure? "
  [[ $REPLY =~ ^[Yy]$ ]]
}

deploy_csv(){
  local CSV=/Users/joejuzl/Downloads/JIRA.csv
  if [ -f $CSV ]; then
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
