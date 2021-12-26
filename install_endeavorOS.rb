=begin

  This program is for installing endeavourOS and installing some basic programs like i always like to have on my linux systems,
   you will still have to choose your own Desktop Enviornment and or Window Manager as I do not have a favorite and I would also like to allow any user of this script 
    the freedom to choose what they like. 

=end

require 'down'
require 'fileutils'

tempfile = Down.download('https://github.com/endeavouros-team/ISO/releases/download/1-EndeavourOS-ISO-releases-archive/EndeavourOS_Atlantis_neo-21_5.iso.torrent')

FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

puts "OK, The torrent file for EndeavorOS Atlantis Neo 21.5 is installed and is in the same directory as this script."
sleep 2
puts "If you would like to install this linux distribution on your computer you need to first install a torrent downloader such as bittorrent or for other linux users transmission"
sleep 2
puts "After the torrent is installed you need to then burn the ISO file to a USB and make it bootable, I recommend Rufus for Windows users and Etcher for Linux users."
sleep 2
puts "From there you will need to boot from the USB and follow the instructions provided by the installer :)"

