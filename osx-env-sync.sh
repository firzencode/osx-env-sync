grep "^export" $HOME/.bash_profile | while IFS=' =' read ignoreexport envvar ignorevalue; do
  launchctl setenv ${envvar} ${!envvar}
done

grep "^export" $HOME/.zshrc | while IFS=' =' read ignoreexport envvar ignorevalue; do
  launchctl setenv ${envvar} ${!envvar}
done
