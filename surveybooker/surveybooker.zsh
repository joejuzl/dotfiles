#### surveybooker #### 
alias survey='cd ~/Development/surveybooker/'
# heroku
heroku_prod() {
    heroku $1 --app surveybooker
}
heroku_stage() {
    heroku $1 --app stage-surveybooker
}
alias hs=heroku_stage
alias hp=heroku_prod
