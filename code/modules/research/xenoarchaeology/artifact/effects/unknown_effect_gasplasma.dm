
/datum/artifact_effect/gasplasma
	effecttype = "gasplasma"
	var/max_pressure
	var/target_percentage

/datum/artifact_effect/gasplasma/New()
	..()
	effect = pick(EFFECT_TOUCH, EFFECT_AURA)
	max_pressure = rand(115,1000)
	effect_type = pick(6,7)

/datum/artifact_effect/gasplasma/DoEffectTouch(var/mob/user)
	if(holder)
		var/turf/holder_loc = holder.loc
		if(istype(holder_loc))
			holder_loc.assume_gas("toxins", rand(2, 15))	//They had oxygen in the original. Surely they meant plasma?

/datum/artifact_effect/gasplasma/DoEffectAura()
	if(holder)
		var/turf/holder_loc = holder.loc
		if(istype(holder_loc))
			holder_loc.assume_gas("toxins", pick(0, 0, 0.1, rand()))
