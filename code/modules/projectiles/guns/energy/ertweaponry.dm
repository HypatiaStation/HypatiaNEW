/obj/item/weapon/gun/energy/automatic/rapidlaser/ertrifle
	name = "ERR40"
	desc = "The Emergency Response Rifle Model 40 is an advanced directed energy weapon capable of emitting highly focused energy which can kill or wound a human being."
	icon = 'icons/mob/Marine_Weapons.dmi'
	icon_state = "ERTRifle_kill"
	fire_sound = 'sound/weapons/laser3.ogg'
	origin_tech = "combat=5;materials=3;magnets=2"
	projectile_type = "/obj/item/projectile/beam/xray/ERTrifle"
	charge_cost = 25
	w_class = 4
	var/mode = 1
	projectiles_per_shot = 1
	update_icon()
		if(modifystate)
			icon_state = "[modifystate]"
		else
			icon_state = "[initial(icon_state)]"
	attack_self(mob/living/user as mob)
		switch(mode)
			if(0)
				mode = 1
				charge_cost = 25
				fire_sound = 'sound/weapons/Laser.ogg'
				user << "\red [src.name] is now set to kill."
				projectile_type = "/obj/item/projectile/beam/xray/ERTrifle"
				modifystate = "ERTRifle_kill"
			if(1)
				mode = 0
				charge_cost = 25
				fire_sound = 'sound/weapons/Taser.ogg'
				user << "\red [src.name] is now set to stun."
				projectile_type = "/obj/item/projectile/energy/electrode"
				modifystate = "ERTRifle_stun"
		update_icon()
/obj/item/weapon/gun/energy/automatic/rapidlaser/ertsmg
	name = "ERSG22"
	desc = "The Emergency Response Submachine Gun Model 22 is a high firing directed energy weapon capable of quickly emitting highly focused energy which can kill or wound a human being."
	icon = 'icons/mob/Marine_Weapons.dmi'
	icon_state = "ERTSMG_kill"
	fire_sound = 'sound/weapons/laser3.ogg'
	origin_tech = "combat=5;materials=3;magnets=2"
	projectile_type = "/obj/item/projectile/beam/xray/burst/ERTsmg"
	charge_cost = 25
	w_class = 4
	var/mode = 1
	update_icon()
		if(modifystate)
			icon_state = "[modifystate]"
		else
			icon_state = "[initial(icon_state)]"
	attack_self(mob/living/user as mob)
		switch(mode)
			if(0)
				mode = 1
				charge_cost = 25
				fire_sound = 'sound/weapons/Laser.ogg'
				user << "\red [src.name] is now set to kill."
				projectile_type = "/obj/item/projectile/beam/xray/burst/ERTsmg"
				modifystate = "ERTSMG_kill"
			if(1)
				mode = 0
				charge_cost = 25
				fire_sound = 'sound/weapons/Taser.ogg'
				user << "\red [src.name] is now set to stun."
				projectile_type = "/obj/item/projectile/energy/electrode"
				modifystate = "ERTSMG_stun"
		update_icon()
/obj/item/weapon/gun/energy/automatic/rapidlaser/ertpistol
	name = "ERP11"
	desc = "The Emergency Response Pistol Model 11 is a handheld energy weapon capable of emitting focused energy which can kill or wound a human being."
	icon = 'icons/mob/Marine_Weapons.dmi'
	icon_state = "ERTPistol_kill"
	fire_sound = 'sound/weapons/laser3.ogg'
	origin_tech = "combat=5;materials=3;magnets=2"
	projectile_type = "/obj/item/projectile/beam"
	charge_cost = 25
	w_class = 4
	var/mode = 1
	projectiles_per_shot = 1
	isHandgun()
		return 1
	update_icon()
		if(modifystate)
			icon_state = "[modifystate]"
		else
			icon_state = "[initial(icon_state)]"
	attack_self(mob/living/user as mob)
		switch(mode)
			if(0)
				mode = 1
				charge_cost = 25
				fire_sound = 'sound/weapons/Laser.ogg'
				user << "\red [src.name] is now set to kill."
				projectile_type = "/obj/item/projectile/beam"
				modifystate = "ERTPistol_kill"
			if(1)
				mode = 0
				charge_cost = 25
				fire_sound = 'sound/weapons/Taser.ogg'
				user << "\red [src.name] is now set to stun."
				projectile_type = "/obj/item/projectile/energy/electrode"
				modifystate = "ERTPistol_stun"
		update_icon()
