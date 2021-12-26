#!/usr/bin/env ruby
=begin

This script will install the programs needed for gamers
  - Game Launchers  : Steam or Lutris
  - Communication   : Discord or Matrix

=end
puts "First installing an AUR Helper and updating and syncing repos"
system("sudo pacman -S paru")
sleep 2
system("sudo pacman -Syuu")
system("clear")
puts "[type the name of the program in all lower case] (recommended)steam or lutris"
gamelauncher = gets.chomp.to_s

if gamelauncher == "steam"
  system('sudo pacman -S steam')
elsif gamelauncher == "lutris"
  system('sudo pacman -S lutris')
end
