alias mee='mvn eclipse:eclipse -DdownloadJavadocs=true -DdownloadSources=true'
alias mci='mvn clean install -DdownloadJavadocs=true -DdownloadSources=true' 
alias mci-skip='mvn clean install -DskipTests=true -DdownloadJavadocs=true -DdownloadSources=true'

alias modall='sudo modprobe --all vboxdrv vboxnetadp vboxnetflt vboxpci'

alias vpnc='sudo vpnc'
alias vpnc-disconnect='sudo /usr/sbin/vpnc-disconnect'
alias grails-clean='rm target -rf && grails clean && grails -reloading'

alias mysql-myfleet='mysql -umyfleet -pmyfleet -h localhost myfleet'