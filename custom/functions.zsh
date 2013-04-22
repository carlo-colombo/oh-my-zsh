function magnet
{
    [[ "$1" =~ xt=urn:btih:([^\&/]+) ]] || exit
    echo "d10:magnet-uri${#1}:${1}e" > "$HOME/Dropbox/torrent/meta-${match[1]}.torrent"
}

function create_bare_repo
{
    repo=$HOME/Dropbox/repos/$1.git
    mkdir $repo
    git init --bare $repo
    unset repo
}

function set_dropbox_remote
{
    repo="$HOME/Dropbox/repos/$1.git"
    git remote add "${2:-origin}" "file://$repo"
    unset repo
}

function git_dropbox_init
{
    repo_name=$(pwd | xargs basename)
    git init
    create_bare_repo   $repo_name
    set_dropbox_remote $repo_name "${1:-origin}"
}