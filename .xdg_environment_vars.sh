set -a

# XDG
# https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
# https://golang.org/pkg/os/#UserConfigDir
#
                                  # Darwin
XDG_CONFIG_HOME=$HOME/.config     # $HOME/Library/Preferences (helm)  $HOME/Library/Application Support (doctl)
XDG_DATA_HOME=$HOME/.local/share  # $HOME/Library
XDG_CACHE_HOME=$HOME/.cache       # $HOME/Library/Caches

# AWS XDG
# https://github.com/aws/aws-cli/issues/2433#issuecomment-532208981
# https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html
# AWS Amplify does not support these variables
# AWS_CONFIG_FILE=$XDG_CONFIG_HOME/aws/config
# AWS_SHARED_CREDENTIALS_FILE=$XDG_CONFIG_HOME/aws/credentials

# ASDF XDG
ASDF_CONFIG_FILE=$XDG_CONFIG_HOME/asdf/.asdfrc
ASDF_DATA_DIR=$XDG_DATA_HOME/asdf
ASDF_DEFAULT_TOOL_VERSIONS_FILENAME=$XDG_CONFIG_HOME/asdf/.tool-versions

# GnuPG
# GNUPGHOME=$XDG_DATA_HOME/gnupg

# Docker
# DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker

set +a