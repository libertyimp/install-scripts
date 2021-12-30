#!/usr/bin/env ruby
=begin

This script will install the programs needed for gamers
  - Game Launchers  : Steam, Lutris
  - Communication   : Discord, Matrix(Element)
  - EXTRAS          : Wine,DXVK

=end
puts 'First installing an AUR Helper(paru) and updating and syncing repos'
system('sudo pacman -S paru')
sleep 2
system('sudo pacman -Syuu')
system('clear')
puts 'Now we will begin installing important programs for gaming on linux'
system('sudo pacman -S wine')
system('paru -S dxvk-bin')
system('clear')
print 'Would you like to install [1]steam [2] lutris [A]ll: '
gamelauncher = gets.chomp

case gamelauncher
  when 1
    system('sudo paman -S steam')
  when 2
    system('sudo pacman -S lutris')
  when 'A', 'a'
    system('sudo pacman -S steam lutris')
  else
    system('clear')
    puts 'There was an issue getting this response'
end

print 'Would you like to install [1]discord [2]matrix(element) [A]ll: '
comms = gets.chomp


case comms
  when 1
    system('sudo pacman -S discord')
  when 2
    system('sudo pacman -S element-desktop')
  when 'A', 'a'
    system('sudo pacman -S discord element-desktop')
  else
    system('clear')
    puts 'There was an issue getting this response'
end

system('clear')
puts 'Thank you, all selected program were installed :)'
