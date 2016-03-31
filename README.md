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

###### Next steps
There's lots of room for improvement here. This was a really quick and dirty solution so that I could avoid using FTP.
- seedtorrent installation and execution could be packaged into a docker container (would need to use shared volumes)
- seedtorrent could host up a simple website that lists the .torrent files
