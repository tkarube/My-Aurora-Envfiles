function ssh() {
  printf "\033]1337;SetUserVar=IS_SSH=MQ==\007"
  command ssh "$@"
  printf "\033]1337;SetUserVar=IS_SSH=\007"
}

function sudo() {
  printf "\033]1337;SetUserVar=IS_SUDO=MQ==\007"
  command sudo "$@"
  printf "\033]1337;SetUserVar=IS_SUDO=\007"
}
