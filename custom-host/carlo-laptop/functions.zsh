function vpn
{
    fab -f ~/scripts/fab/vpn.py vpn:$1
}

compctl -k "(odm)" vpn