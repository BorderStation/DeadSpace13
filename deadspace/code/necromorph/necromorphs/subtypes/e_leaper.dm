/mob/living/carbon/human/necromorph/leaper/enhanced
	maxHealth = 195
	class = /datum/necro_class/leaper/enhanced
	necro_species = /datum/species/necromorph/leaper/enhanced
	pixel_x = -16
	pixel_y = -18
	base_pixel_x = -16
	base_pixel_y = -18
	bodyparts = list(
		/obj/item/bodypart/chest/necromorph/leaper/enhanced,
		/obj/item/bodypart/head/necromorph/leaper/enhanced,
		/obj/item/bodypart/arm/left/necromorph/leaper/enhanced,
		/obj/item/bodypart/arm/right/necromorph/leaper/enhanced,
		/obj/item/bodypart/leg/left/necromorph/leaper/enhanced,
		/obj/item/bodypart/leg/right/necromorph/leaper/enhanced,
	)

/mob/living/carbon/human/necromorph/leaper/enhanced/play_necro_sound(audio_type, volume, vary, extra_range)
	playsound(src, pick(GLOB.leaper_sounds[audio_type]), volume, vary, extra_range)

/datum/necro_class/leaper/enhanced
	display_name = "Enhanced Leaper"
	desc = "A long range ambusher, the leaper can leap on unsuspecting victims from afar, knock them down, and tear them apart with its bladed tail. Not good for prolonged combat though."
	ui_icon = 'deadspace/icons/necromorphs/leaper.dmi'
	necromorph_type_path = /mob/living/carbon/human/necromorph/leaper/enhanced
	tier = 2
	nest_allowed = FALSE
	biomass_cost = 140
	biomass_spent_required = 680
	melee_damage_lower = 18
	melee_damage_upper = 22
	armor = list(BLUNT = 65, PUNCTURE = 45, SLASH = 30, LASER = 0, ENERGY = 0, BOMB = 15, BIO = 65, FIRE = 20, ACID = 95)
	actions = list(
		/datum/action/cooldown/necro/charge/leaper/enhanced,
		/datum/action/cooldown/necro/swing/leaper/enhanced,
		/datum/action/cooldown/necro/active/gallop,
		/datum/action/cooldown/necro/shout,
	)
	minimap_icon = "e_leaper"
	implemented = TRUE

/datum/species/necromorph/leaper/enhanced
	name = "Enhanced Leaper"
	id = SPECIES_NECROMORPH_LEAPER_ENHANCED
	speedmod = 1.5
	bodypart_overrides = list(
		BODY_ZONE_CHEST = /obj/item/bodypart/chest/necromorph/leaper/enhanced,
		BODY_ZONE_HEAD = /obj/item/bodypart/head/necromorph/leaper/enhanced,
		BODY_ZONE_L_ARM = /obj/item/bodypart/arm/left/necromorph/leaper/enhanced,
		BODY_ZONE_R_ARM = /obj/item/bodypart/arm/right/necromorph/leaper/enhanced,
		BODY_ZONE_L_LEG = /obj/item/bodypart/leg/left/necromorph/leaper/enhanced,
		BODY_ZONE_R_LEG = /obj/item/bodypart/leg/right/necromorph/leaper/enhanced,
	)
