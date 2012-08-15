function magnet
{
    wget http://zoink.it/torrent/$1.torrent --output-document=$HOME/Dropbox/torrent/$1.torrent
}

function flexplayer()
{           
    FLEX_PLAYER_DIRECTORY="$HOME/ipad.flexplayer"

    if [[ ! -x "$FLEX_PLAYER_DIRECTORY" ]]; then
        mkdir "$FLEX_PLAYER_DIRECTORY"
    fi

    ifuse --appid com.personasoftware.flexplayer $FLEX_PLAYER_DIRECTORY
}
