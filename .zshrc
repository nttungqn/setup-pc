# ...

# golang
export PATH=$PATH:/usr/local/go/bin
export GOPATH=~/go-workspace
export PATH=$PATH:$GOPATH/bin

export BOT_USER=tungnt20
export BOT_PRIVATE_TOKEN=glpat-Qg1S3ezRUbSpJeoAJXq8
export CI_PROJECT_NAMESPACE=crypto-game-portal
export PATH=$PATH:$HOME/go/bin
export RELEASE_PROTO_REPO_ID=25981532
export RELEASE_PROTO_REPO_USERNAME=tungnt20
export RELEASE_PROTO_REPO_TOKEN=2sxAPpeZCVYWerzMc5_K

#nodejs
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
export PATH="$HOME/tools/aws-ec2-instance-connect-cli/bin:$PATH"
export PATH="/usr/local/bin/node:$PATH"

#remote-db
alias c_mssh_dev="mssh --profile backend backend@i-046b78a9bb815763e --region ap-southeast-1 -L 13306:inspirelab-dev-rds.cwbdg93muahv.ap-southeast-1.rds.amazonaws.com:3306"
alias c_mssh_stg="mssh --profile backend backend@i-046b78a9bb815763e --region ap-southeast-1 -L 33306:inspirelab-stg-rds.cwbdg93muahv.ap-southeast-1.rds.amazonaws.com:3306"
alias c_mssh_prod="mssh --profile backend backend@i-046b78a9bb815763e --region ap-southeast-1 -L 43306:inspirelab-prod-rds.cwbdg93muahv.ap-southeast-1.rds.amazonaws.com:3306"

#openvpn3
alias c_openvpn="openvpn3 session-start --config ~/.custom_config/device_4_tungnt@inspirelab_io@inspirelab.openvpn.com_\[Singapore\].ovpn"
alias c_openvpn_disconnect="openvpn3 session-manage --disconnect --config ~/.custom_config/device_4_tungnt@inspirelab_io@inspirelab.openvpn.com_\[Singapore\].ovpn"

export PNPM_HOME="/home/nttung/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

#cmgp
alias c_cmgp="sh ~/.custom_config/cmgp-build.sh"
alias c_dceu="sh ~/.custom_config/dceu-build.sh"