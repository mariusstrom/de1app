
##############################################################################################################################################################################################################################################################################
# DECENT ESPRESSO EXAMPLE SKIN FOR NEW SKIN DEVELOPERS
##############################################################################################################################################################################################################################################################################

# you should replace the JPG graphics in the 2560x1600/ directory with your own graphics. 
source "[homedir]/skins/default/standard_includes.tcl"

# the standard behavior when the DE1 is doing something is for tapping anywhere on the screen to stop that. This "source" command does that.
source "[homedir]/skins/default/standard_stop_buttons.tcl"



# example of loading a custom font (you need to indicate the TTF file and the font size)
#load_font "Northwood High" "[skin_directory]/sample.ttf" 60
#add_de1_text "off" 1280 500 -text "An important message" -font {Northwood High} -fill "#2d3046" -anchor "center"


##############################################################################################################################################################################################################################################################################
# text and buttons to display when the DE1 is idle

load_font "aliceinwonderland" "[skin_directory]/aliceinwonderland.ttf" 42 

# these 3 text labels are for the three main DE1 functions, and they X,Y coordinates need to be adjusted for your skin graphics
add_de1_text "off" 473 1480  -text [translate "ESPRESSO"] -font {aliceinwonderland} -fill "#48104f" -anchor "center" 
add_de1_text "off" 1300 1480  -text [translate "STEAM"] -font {aliceinwonderland} -fill "#48104f" -anchor "center" 
add_de1_text "off" 2148 1480 -text [translate "WATER"] -font {aliceinwonderland} -fill "#48104f" -anchor "center" 
add_de1_text "off" 2060 235 -text [translate "SETTINGS"] -font {aliceinwonderland} -fill "#48104f" -anchor "center" 



# these 3 buttons are rectangular areas, where tapping the rectangle causes a major DE1 action (steam/espresso/water)
add_de1_button "off" "say [translate {espresso}] $::settings(sound_button_in);start_espresso" 200 450 810 1525
add_de1_button "off" "say [translate {steam}] $::settings(sound_button_in);start_steam" 950 450 1625 1525
add_de1_button "off" "say [translate {water}] $::settings(sound_button_in);start_water" 1915 450 2400 1525


# these 2 buttons are rectangular areas for putting the machine to sleep or starting settings.  Traditionally, tapping one of the corners of the screen puts it to sleep.
add_de1_button "off" "say [translate {sleep}] $::settings(sound_button_in);start_sleep" 20 5 1325 250
add_de1_button "off" {show_settings} 1875 50 2505 300

##############################################################################################################################################################################################################################################################################

