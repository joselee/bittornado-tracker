Easily host a private bittorrent tracker and seed files on a linux server.
The dockerfile is for the tracker, which runs bittornado.
The bash script seedtorrent creates a .torrent file and starts seeding it with ctorrent.

#### Running your own bittorrent tracker
- docker run -d --name tracker -p 6969:6969 joselee/bittornado-tracker

#### Installing seedtorrent
- git clone https://github.com/joselee/bittornado-tracker.git
- sudo apt-get install ctorrent
- sudo chmod +x bittornado-tracker/seedtorrent
- sudo mv bittornado-tracker/seedtorrent /usr/local/bin/

#### Using seedtorrent
- seedtorrent _fileOrFolder_ _torrentName.torrent_
- now the .torrent file is ready to be distributed
