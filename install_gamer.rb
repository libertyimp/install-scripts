#!/usr/bin/env ruby
=begin

This script will install the programs needed for gamers
  - Game Launchers  : Steam or Lutris
  - Communication   : Discord or Matrix
  - EXTRAS          : 

=end
puts "First installing an AUR Helper and updating and syncing repos"
system("sudo pacman -S paru")
sleep 2
system("sudo pacman -Syuu")
system("clear")
puts "Now we will begin installing important programs for gaming on linux"
system("sudo pacman -S wine")
system("paru -S dxvk-bin")
system('clear')
print "[type the name of the program in all lower case] (recommended)steam or lutris: "
gamelauncher = gets.chomp.to_s

if gamelauncher == "steam"
  system('sudo pacman -S steam')
elsif gamelauncher == "lutris"
  system('sudo pacman -S lutris')
end

print "[type the name of the program in all lower case] discord or matrix: "
comms = gets.chomp.to_s

if comms == "discord"
  system('sudo pacman -S discord')
elsif comms == "matrix"
  system('sudo pacman -S element-desktop')
end

system('clear')
puts "Installed programs\n -#{gamelauncher}\n -#{comms}\n -wine\n -dxvk "
