alias ku=kubectl
alias kup="kubectl --namespace=prod"
alias kut="kubectl --namespace=test"
alias kus="kubectl --namespace=sand"
alias kue="kubectl --namespace=eval"
alias kum="kubectl --namespace=medtronic"
alias kuy="kubectl --namespace=ypsomed"

alias kw="watch -n 0.5 kubectl get po"
alias kwp="kw --namespace=prod"
alias kwt="kw --namespace=test"
alias kws="kw --namespace=sand"
alias kwe="kw --namespace=eval"
alias kwm="kw --namespace=medtronic"
alias kwy="kw --namespace=ypsomed"

alias kp=kpoof
alias ke=kex
alias kc=kubectx
alias kn=kubens

alias kcs="kc gke_io-xbird-situations_europe-west1-c_situations"
alias kcm="kc gke_io-xbird-situations-medtronic_us-east1-d_situations"
