#!/usr/bin/env ruby
=begin

  This program will install the program paru and an text editor of your choice as well as a web browser of your choice
  -EDITOR        : VIM, EMACS or VSCodium
  -WEB BROWSER   : Firefox, Brave of Ungoogled Chromium
  -TERMINAL      : Alacritty, Kitty or URXVT
  -VIDEO VIEWER  : MPV, VLC or Celluloid
  -IMAGE VIEWER  : SXIV, VIMIV, VIEWNOIR

=end
puts "Installing an AUR Helper and then Updating an syncing repos"
system("sudo pacman -S paru")
sleep 2
system("sudo pacman -Syuu")
system("clear")
puts "[type the name of the program in all lower case] (recommended)vim, emacs, vscodium"
print "Would you like to install VIM or Emacs or VSCodium: "
editor = gets.chomp.to_s

if editor == "vim"
  system('sudo pacman -S vim')
elsif editor == "emacs"
  system('sudo pacman -S emacs')
elsif editor == "vscodeium"
  system('sudo pacman -S code')
end

sleep 2

puts "Now lets choose a web browser."
sleep 1
puts "[type the name of the program in all lower case] (recommended)firefox, brave, chromium"
print "Would you like to install Firefox, Brave or Ungoogled Chromium: "
browser = gets.chomp.to_s

if browser == "firefox"
  system('sudo pacman -S firefox')
elsif browser == "brave"
  system('paru -S brave-browser')
elsif browser == "chromim"
  system('sudo pacman -S chromium')
end

puts"Now lets choose a terminal emulator."
sleep 1
puts "[type the name of the program in all lowser case] (recommended) alacritty, kitty, urxvt"
print "Would you like to install Alacritty, Kitty or URXVT: "
terminal = gets.chomp.to_s

if terminal == "alacritty"
  system('sudo pacman -S alacritty')
elsif terminal == "kitty"
  system('sudo pacman -S kitty')
elsif terminal == "urxvt"
  system('sudo pacman -S urxvt')
end

sleep 2

puts "Finally lets install an image viewer."
sleep 1
puts "[type the name of the program in all lower case] (recommended)sxiv, vimiv, viewnoir"
print "Would you liek to install Sxiv, Vimiv, Viewnoir: "
imageviewer = gets.chomp.to_s

if imageviewer == "sxiv"
  system('sudo pacman -S sxiv')
elsif imageviewer == "kitty"
  system('sudo pacman -S vimiv')
elsif imageviewer == "urxvt"
  system('sudo pacman -S viewnoir')
end

# End of script to list the installed programs so the user knows what programs where installed, though they chose them but if they are like me they have the memory of a fly lol
system("clear")
puts "The installation has finished\nInstalled Programs:\n -#{editor}\n -#{browser}\n -#{terminal}\n -#{imageviewer}\n :)\n"

