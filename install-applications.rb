#!/usr/bin/env ruby
puts "Updating everything and syncing repos as well as installing an AUR Helper before we get started with installing other applications."
sleep 2
system("sudo pacman -Syuu")
system("clear")
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
print "Would you like to install Firefox, Brave or Ungoogled Chromium: "
browser = gets.chomp.to_s

if browser == "firefox"
  system('sudo pacman -S firefox')
elsif browser == "brave"
end
