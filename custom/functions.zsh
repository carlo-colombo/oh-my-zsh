function magnet
{
    [[ "$1" =~ xt=urn:btih:([^\&/]+) ]] || exit
    echo "d10:magnet-uri${#1}:${1}e" > "$HOME/Dropbox/torrent/meta-${match[1]}.torrent"
}
