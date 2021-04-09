NameMenuHeader:
	db STATICMENU_NO_TOP_SPACING ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .Names
	db 1 ; default option

.Names:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "NEW NAME@"

PlayerNameArray:
IF DEF(_GOLD)
	db "KRIS@"
	db "AMANDA@"
	db "JUANA@"
	db "JODI@"
ELIF DEF(_SILVER)
	db "CRYS@"
	db "MAISY@"
	db "ROSIE@"
	db "RACHEL@"
ENDC
	db 2 ; title indent
	db "NAME@" ; title
