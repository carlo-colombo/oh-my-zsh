function vpn
{
    fab -f ~/scripts/fab/vpn.py vpn:$1
}

compctl -k "(odm)" vpn


function setup-screen
{
    xrandr --output LVDS1 --mode 1920x1200 --primary --output VGA1 --mode 1600x900 --left-of LVDS1
}