//Cheap to put a single item per file, but fuck it! - Skull132

/obj/structure/banner
	name = "Corporate Banner"
	desc = "A blue flag emblazoned with a golden logo of Nanotrasen hanging from a wooden stand."
	anchored = 1
	density = 1
	layer = 9
	icon = 'icons/obj/banner.dmi'
	icon_state = "banner_down"

//////////CHAPLIAN EXPANSION/////////

/obj/structure/banner/sunbro
	name = "Sun Banner"
	desc = "A beautiful image of the sun adorns this banner, it seems to need people to praise it."
	anchored = 1
	density = 1
	layer = 9
	icon = 'icons/obj/banner.dmi'
	icon_state = "sunbro_down"

/obj/structure/banner/dankmaymays
	name = "The Dankest Banner"
	desc = "You feel the May Mays course through your vains, you hear the great lord Shy-ah's holy commandment echo in your head JUST DO IT."
	anchored = 1
	density = 1
	layer = 9
	icon = 'icons/obj/banner.dmi'
	icon_state = "dankmaymays_down"

/obj/structure/banner/cross
	name = "Cross Banner"
	desc = "A symbol of a religion its shaped like a lower case t with its tail cut off."
	anchored = 1
	density = 1
	layer = 9
	icon = 'icons/obj/banner.dmi'
	icon_state = "cross_down"

/obj/structure/banner/starofdavid
	name = "Star Of David Banner"
	desc = "A Religious symbol, Apparently its shaped like a star, not like any star you've seen"
	anchored = 1
	density = 1
	layer = 9
	icon = 'icons/obj/banner.dmi'
	icon_state = "starofdavid_down"

/obj/structure/banner/moonandstar
	name = "Moon and Star Banner"
	desc = "A symbol of a religion it looks like a moon and star seen from a planet."
	anchored = 1
	density = 1
	layer = 9
	icon = 'icons/obj/banner.dmi'
	icon_state = "moonandstar_down"

/obj/structure/banner/dharmachakra
	name = "Dharmachakra Banner"
	desc = "A symbol of a religion it looks like a really fancy wheel."
	anchored = 1
	density = 1
	layer = 9
	icon = 'icons/obj/banner.dmi'
	icon_state = "dharmachakra_down"

/obj/structure/banner/aum
	name = "Aum Banner"
	desc = "A symbol of a religion it looks like writting but you don't know what it says."
	anchored = 1
	density = 1
	layer = 9
	icon = 'icons/obj/banner.dmi'
	icon_state = "aum_down"

/obj/structure/banner/khanda
	name = "Khanda Banner"
	desc = "A symbol of a religion it looks like two swords and a circle thats pretty cool."
	anchored = 1
	density = 1
	layer = 9
	icon = 'icons/obj/banner.dmi'
	icon_state = "khanda_down"


/obj/structure/banner/verb/toggle()
	set src in oview(1)
	set category = "Object"
	set name = "Toggle Banner"

	if(!usr.canmove || usr.stat || usr.restrained())
		return 0

	switch(icon_state)
		if("banner_down")
			src.icon_state = "banner_up"
			usr << "You roll up the cloth."
		if("banner_up")
			src.icon_state = "banner_down"
			usr << "You let the cloth hang loose."
		if("sunbro_down")
			src.icon_state = "sunbro_up"
			usr << "You roll up the cloth."
		if("sunbro_up")
			src.icon_state = "sunbro_down"
			usr << "You let the cloth hang loose."
		if("dankmaymays_down")
			src.icon_state = "dankmaymays_up"
			usr << "You roll up the cloth You feel slightly dumber."
		if("dankmaymays_up")
			src.icon_state = "dankmaymays_down"
			usr << "You let the cloth hang loose You feel slightly dumber."
		if("cross_down")
			src.icon_state = "cross_up"
			usr << "You roll up the cloth."
		if("cross_up")
			src.icon_state = "cross_down"
			usr << "You let the cloth hang loose."
		if("starofdavid_down")
			src.icon_state = "starofdavid_up"
			usr << "You roll up the cloth."
		if("starofdavid_up")
			src.icon_state = "starofdavid_down"
			usr << "You let the cloth hang loose."
		if("moonandstar_down")
			src.icon_state = "moonandstar_up"
			usr << "You roll up the cloth."
		if("moonandstar_up")
			src.icon_state = "moonandstar_down"
			usr << "You let the cloth hang loose."
		if("dharmachakra_down")
			src.icon_state = "dharmachakra_up"
			usr << "You roll up the cloth."
		if("dharmachakra_up")
			src.icon_state = "dharmachakra_down"
			usr << "You let the cloth hang loose."
		if("aum_down")
			src.icon_state = "aum_up"
			usr << "You roll up the cloth."
		if("aum_up")
			src.icon_state = "aum_down"
			usr << "You let the cloth hang loose."
		if("khanda_down")
			src.icon_state = "khanda_up"
			usr << "You roll up the cloth."
		if("khanda_up")
			src.icon_state = "khanda_down"
			usr << "You let the cloth hang loose."
		else
			usr << "You feel slightly dumber."
			return

	src.update_icon()

/obj/structure/banner/attackby(obj/item/W, mob/user)
	if(istype(W, /obj/item/weapon/wrench))
		switch(anchored)
			if(0)
				anchored = 1
				playsound(src.loc, 'sound/items/Ratchet.ogg', 75, 1)
				user.visible_message("[user.name] secures [src.name] to the floor.", "You secure [src.name] to the floor.", "You hear a ratchet")
			if(1)
				anchored = 0
				playsound(src.loc, 'sound/items/Ratchet.ogg', 75, 1)
				user.visible_message("[user.name] unsecures [src.name] reinforcing bolts from the floor.", "You unsecure [src.name] from the floor.", "You hear a ratchet")
		return
