/obj/item/weapon/gun/projectile/sniperrifle
	name = "MS210"
	desc = "A redesign of the Saber SMG, this model has a front loading magazine chamber housing more rounds, a rear stock for increased stability, and comes with an attached red-dot targeting HUD. Fires .45 cal. rounds."
	icon = 'icons/mob/Marine_Weapons.dmi'
	icon_state = "MarineSniper"
	item_state = "MarineSniper"
	w_class = 4.0
	max_shells = 10
	caliber = "a127"
	ammo_type = "/obj/item/ammo_casing/a127"
	fire_delay_wielded = 35
	fire_delay_unwielded = 105
	zoomdevicename = "sniper scope"
	accuracy = -110
	rangedrop = -2
	load_method = MAGAZINE
	isHandgun()
		return 0

/obj/item/weapon/gun/projectile/sniperrifle/verb/scope()
	set category = "Object"
	set name = "Use Scope"
	set popup_menu = 1

	zoom()
/obj/item/weapon/gun/projectile/sniperrifle/verb/wield()
	set name = "Wield"
	set category = "Object"
	set src in usr
	toggle_wield(usr)
/obj/item/weapon/gun/projectile/sniperrifle
	can_wield()
		return 1

/obj/item/weapon/gun/projectile/sniperrifle/ready_to_fire()
	if(!zoom)
		return 0
	if(world.time >= last_fired + fire_delay)
		last_fired = world.time
		return 1
	else
		return 0
