case "$dpkgArch" in amd64|i386|ppc64el) # arches officialy built by upstream
sudo echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 
sudo apt-get update; ; *) # we're on an architecture upstream doesn't officially build for
# let's build binaries from their published source packages
sudo echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list
tempDir="$(mktemp -d)"; cd "$tempDir";  savedAptMark="$(apt-mark showmanual)";  # build .deb files from upstream's source packages (which are verified by apt-get)
sudo apt-get update && sudo apt-get build-dep -y postgresql-common pgdg-keyring "postgresql-$PG_MAJOR=$PG_VERSION" 
export DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)";
sudo apt-get source --compile postgresql-common pgdg-keyring "postgresql-$PG_MAJOR=$PG_VERSION" 