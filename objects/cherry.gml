#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/15
color = "red"

once = false
#define Step_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///cherry colors
if once exit
once = true

switch color {
 case "red": exit
 case "orange": sprite_index = sprCherryOrange break;
 case "yellow": sprite_index = sprCherryYellow break;
 case "charteuse": sprite_index = sprCherryCharteuse break;
 case "green": sprite_index = sprCherryGreen break;
 case "emerald": sprite_index = sprCherryEmerald break;
 case "cyan": sprite_index = sprCherryCyan break;
 case "azure": sprite_index = sprCherryAzure break;
 case "blue": sprite_index = sprCherryBlue break;
 case "violet": sprite_index = sprCherryViolet break;
 case "pink": sprite_index = sprCherryPink break;
 case "magenta": sprite_index = sprCherryMagenta break;
 case "white": sprite_index = sprCherryWhite break;
 case "gray": sprite_index = sprCherryGray break;
 case "black": sprite_index = sprCherryBlack break;
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field color: enum("red","orange","yellow","charteuse","green","emerald","cyan","azure","blue","violet","pink","magenta","white","gray","black")
