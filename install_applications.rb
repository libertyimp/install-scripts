#!/usr/bin/env ruby

=begin
  Installable application options
  -EDITOR        : VIM, EMACS or VSCodium
  -WEB BROWSER   : Firefox, Brave of Ungoogled Chromium
  -TERMINAL      : Alacritty, Kitty or URXVT
  -VIDEO VIEWER  : MPV, VLC or Celluloid
  -IMAGE VIEWER  : SXIV, VIMIV or VIEWNOIR

=end

puts 'Installing an AUR Helper and then Updating an syncing repos'
system('sudo pacman -S paru')
sleep 2
system('sudo pacman -Syuu')
system("clear")
puts 'Now lets install a text editor.'
sleep 1
puts "You can install any combination of these programs as well, for example typing 13 would install the 1st and 3rd program"
print "Would you like to install [1]vim [2]Emacs [3]VSCodium [A]ll: "
editor = gets.chomp

case editor
when 1
  system('sudo pacman -S vim')
when 2
  system('sudo pacman -S emacs')
when 3
  system('sudo pacman -S code')
when 12
  system('sudo pacman -S vim emacs')
when 13
  system('sudo pacman -S vim code')
when 23
  system('sudo pacman -S emacs code')
when 'A', 'a'
  system('sudo pacman -S vim emacs code')
end

sleep 2

puts "Now lets choose a web browser."
sleep 1
puts "You can install any combination of these programs as well, for example typing 13 would install the 1st and 3rd program"
print "Would you like to install [1]firefox [2]Brave [3]Ungoogled Chromium [A]ll: "
browser = gets.chomp

case browser
when 1
  system('sudo pacman -S firefox')
when 2
  system('paru -S brave-browser')
when 3
  system('paru -S ungoogled-chromium')
when 12
  system('sudo pacman -S firefox && paru -S brave-browser')
when 13
  system('sudo pacman -S firefox && paru -S ungoogled-chromium')
when 23
  system('paru -S brave-browser ungoogled-chromium')
end

puts "Now lets choose a terminal emulator"
sleep 1
puts "You can install any combination of these programs as well, for example typing 13 would install the 1st and 3rd program"
print "Would you like to install [1]alacritty [2]kitty [3]urxvt [A]ll: "
terminal = gets.chomp

case terminal
when 1
  system('sudo pacman -S alacritty')
when 2
  system('sudo pacman -S kitty')
when 3
  system('sudo pacman -S urxvt')
when 12
  system('sudo pacman -S alacritty kitty')
when 13
  system('sudo pacman -S alacritty urxvt')
when 23
  system('sudo pacman -S kitty urxvt')
when 'A', 'a'
  system('sudo pacman -S alacritty kitty urxvt')
end

sleep 2

puts 'Lets install an video player.'
sleep 1
puts "You can install any combination of these programs as well, for example typing 13 would install the 1st and 3rd program"
print "Would you like to install [1]mpv [2]vlc [3]celluloid [A]ll: "
videoplayer = gets.chomp

case videoplayer
when 1
  system('sudo pacman -S mpv')
when 2
  system('sudo pacman -S vlc')
when 3
  system('sudo pacman -S celluloid')
when 12
  system('sudo pacman -S mpv vlc')
when 13
  system('sudo pacman -S mpv celluloid')
when 23
  system('sudo pacman -S vlc celluloid')
when 'A', 'a'
  system('sudo pacman -S mpv vlc celluloid')
end

sleep 2

puts "Finally lets install an image viewer."
sleep 1
puts "You can install any combination of these programs as well, for example typing 13 would install the 1st and 3rd program"
print "Would you like to install [1]sxiv [2]vimiv [3]viewnoir [A]ll: "
terminal = gets.chomp

case imageviewer
when 1
  system('sudo pacman -S sxiv')
when 2
  system('sudo pacman -S vimiv')
when 3
  system('sudo pacman -S viewnoir')
when 12
  system('sudo pacman -S sxiv vimiv')
when 13
  system('sudo pacman -S sxiv viewnoir')
when 23
  system('sudo pacman -S vimiv viewnoir')
when 'A', 'a'
  system('sudo pacman -S sxiv vimiv viewnoir')
end

# End of script to list the installed programs so the user knows what programs where installed, though they chose them but if they are like me they have the memory of a fly lol
system("clear")
puts "The installation has finished\nInstalled selected programs :)"

