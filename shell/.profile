# Executed by all login shells. Only environement variables should goes in here.

# * topics
# load profile files from the installed modules
profile_dir=${HOME}/.shell/profile/
if [ -d "$profile_dir" ]; then
    for profile in "$profile_dir"/*; do
        # shellcheck source=/dev/null
        . "$profile"
    done
fi

# * general
export PATH="$HOME/.local/bin:$PATH"
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-${HOME}/.config}
# this file is executed when starting a POSIX *interactive* shell
ENV=$HOME/.shell/int; export ENV

export MANWIDTH=75
export TIME_STYLE=iso

# NOTE Maybe it should go in their respective topics
export EDITOR="emacsclient -t"
export VISUAL="emacs -nw"
export BROWSER="firefox"
export MOZ_USE_XINPUT2=1

# * language
# Set default language
export LANG="fr_FR.utf8"
export LC_CTYPE="fr_FR.UTF-8"
export LC_NUMERIC="fr_FR.UTF-8"
export LC_TIME="fr_FR.UTF-8"
export LC_COLLATE="fr_FR.UTF-8"
export LC_MONETARY="fr_FR.UTF-8"
export LC_MESSAGES="fr_FR.UTF-8"
export LC_PAPER="fr_FR.UTF-8"
export LC_NAME="fr_FR.UTF-8"
export LC_ADDRESS="fr_FR.UTF-8"
export LC_TELEPHONE="fr_FR.UTF-8"
export LC_MEASUREMENT="fr_FR.UTF-8"
export LC_IDENTIFICATION="fr_FR.UTF-8"
# Set language preferences
export LANGUAGE="fr_FR:en_US:en"

# * personal variables
# Variables that I use in other scripts
case $(uname) in
    Linux)
        OS=$(sed -n 's|^ID=\(.*\)|\1|p' /etc/os-release);;
    Darwin)
        OS="macos";;
    *)
        OS="unknown";;
esac
export OS

# Local Variables:
# mode: sh
# sh-shell: sh
# End:
