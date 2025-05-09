export RBENV_ROOT=/opt/homebrew/opt/rbenv
export PATH=$RBENV_ROOT/bin:$PATH

# init according to man page
if (( $+commands[rbenv] ))
then
  eval "$(rbenv init -)"
fi
