/obj/item/clothing/under/rank/ert/medic
	desc = "An under-armour combat shirt worn by medical troopers of the NanoTrasen Emergency Response Teams."
	name = "ERT medical jumpsuit"
	icon_state = "ert_soldier"
	item_state = "ert_soldier"
	item_color = "ert_soldier"

/obj/item/clothing/under/rank/ert/commander
	desc = "An under-armour combat shirt worn by the field commanders of the NanoTrasen Emergency Response Teams."
	name = "ERT commander jumpsuit"
	icon_state = "ert_nco"
	item_state = "ert_nco"
	item_color = "ert_nco"

/obj/item/clothing/under/rank/ert/security
	desc = "An under-armour combat shirt worn by the security troopers of the NanoTrasen Emergency Response Teams."
	name = "ERT security jumpsuit"
	icon_state = "ert_officer"
	item_state = "ert_officer"
	item_color = "ert_officer"

/obj/item/clothing/under/rank/ert/engineer
	desc = "An under-armour combat shirt worn by the engineers of the NanoTrasen Emergency Response Teams."
	name = "ERT engineer jumpsuit"
	icon_state = "ert_cdr"
	item_state = "ert_cdr"
	item_color = "ert_cdr"

obj/item/clothing/under/rank/ert
	name = "ERT duty uniform"
	desc = "An uniform worn by members of the NanoTrasen Emergency Response Teams while not on combat duties."
	icon_state = "ert_uniform"
	item_state = "ert_uniform"
	item_color = "ert_uniform"
	armor = list(melee = 10, bullet = 0, laser = 10,energy = 0, bomb = 0, bio = 0, rad = 0)
	flags = FPRINT | TABLEPASS
	siemens_coefficient = 0.8