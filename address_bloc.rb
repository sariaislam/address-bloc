require_relative 'controllers/menu_controllers'

menu = MenuController.new
system "clear"
puts "Welcome to AddressBloc!"

menu.main_menu
