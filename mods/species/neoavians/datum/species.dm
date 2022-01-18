/datum/appearance_descriptor/age/neoavian
	chargen_min_index = 3
	chargen_max_index = 6
	standalone_value_descriptors = list(
		"a hatchling" =     1,
		"an fledgeling" =   6,
		"a young adult" =  12,
		"an adult" =       25,
		"middle-aged" =    35,
		"aging" =          45,
		"elderly" =        50
	)

/decl/species/neoavian
	name = SPECIES_AVIAN
	name_plural = "Tesharii"
	description = "A colloquial term referring to the species of sentient avians across the galaxy. \
	While numerous avian species were uplifted, those from the planet Qerr'Balak, officially known as Teshari, represent a majority of avians in space. \
	Extremely fragile, agile, and adept at hunting in packs, they have managed to gain a reputation as capable against the odds."

	age_descriptor = /datum/appearance_descriptor/age/neoavian
	holder_icon = 'mods/species/neoavians/icons/holder.dmi'

	meat_type = /obj/item/chems/food/meat/chicken

	base_color = "#252525"
	base_eye_color = "#f5c842"
	base_markings = list(/decl/sprite_accessory/marking/avian = "#454545")

	reagent_tag = IS_AVIAN

	available_bodytypes = list(
		/decl/bodytype/avian,
		/decl/bodytype/avian/additive,
		/decl/bodytype/avian/raptor,
		/decl/bodytype/avian/additive/raptor
	)

	total_health = 150
	brute_mod = 1.25
	burn_mod =  1.25
	mob_size = MOB_SIZE_SMALL
	holder_type = /obj/item/holder
	gluttonous = GLUT_TINY
	blood_volume = 400
	hunger_factor = DEFAULT_HUNGER_FACTOR * 1.6

	spawn_flags = SPECIES_CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_SKIN_COLOR | HAS_EYE_COLOR
	bump_flag = MONKEY
	swap_flags = MONKEY|SIMPLE_ANIMAL
	push_flags = MONKEY|SIMPLE_ANIMAL

	heat_discomfort_strings = list(
		"Your feathers prickle in the heat.",
		"You feel uncomfortably warm.",
		)

	has_organ = list(
		BP_STOMACH =  /obj/item/organ/internal/stomach,
		BP_HEART =    /obj/item/organ/internal/heart,
		BP_LUNGS =    /obj/item/organ/internal/lungs,
		BP_LIVER =    /obj/item/organ/internal/liver,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys,
		BP_BRAIN =    /obj/item/organ/internal/brain,
		BP_EYES =     /obj/item/organ/internal/eyes/avian
	)

	override_limb_types = list(BP_TAIL = /obj/item/organ/external/tail/avian)

	unarmed_attacks = list(
		/decl/natural_attack/bite/sharp,
		/decl/natural_attack/claws,
		/decl/natural_attack/stomp/weak
	)

	available_cultural_info = list(
		TAG_CULTURE = list(
			/decl/cultural_info/culture/neoavian,
			/decl/cultural_info/culture/neoavian/saurian,
			/decl/cultural_info/culture/other
		)
	)

/decl/species/neoavian/equip_default_fallback_uniform(var/mob/living/carbon/human/H)
	if(istype(H))
		H.equip_to_slot_or_del(new /obj/item/clothing/under/avian_smock/worker, slot_w_uniform_str)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/avian, slot_shoes_str)

/decl/species/neoavian/handle_post_species_pref_set(var/datum/preferences/pref)
	pref.body_markings = pref.body_markings || list()
	if(!pref.body_markings["Tailfeathers (Groin)"])
		pref.body_markings["Tailfeathers (Groin)"] = "#252525"
	pref.skin_colour = "#252525"
/decl/species/neoavian/get_holder_color(var/mob/living/carbon/human/H)
	return H.skin_colour

/obj/item/organ/internal/eyes/avian
	eye_icon = 'mods/species/neoavians/icons/eyes.dmi'

/datum/sprite_accessory/hair/avian
	name = "Avian Plumage"
	icon_state = "avian_default"
	icon = 'mods/species/neoavians/icons/hair.dmi'
	species_allowed = list(SPECIES_AVIAN)

/datum/sprite_accessory/hair/avian/spiky
	name = "Avian Spiky"
	icon_state = "avian_spiky"

/datum/sprite_accessory/hair/avian/gentle
	name = "Avian Gentle"
	icon_state = "avian_unused"

/datum/sprite_accessory/hair/avian/hedge
	name = "Avian Hedge"
	icon_state = "avian_hedge"

/datum/sprite_accessory/hair/avian/long
	name = "Avian Long"
	icon_state = "avian_long"

/datum/sprite_accessory/hair/avian/burst
	name = "Avian Short Burst"
	icon_state = "avian_burst_short"

/datum/sprite_accessory/hair/avian/mohawk
	name = "Avian Mohawk"
	icon_state = "avian_mohawk"

/datum/sprite_accessory/hair/avian/pointy
	name = "Avian Pointy"
	icon_state = "avian_pointy"

/datum/sprite_accessory/hair/avian/upright
	name = "Avian Upright"
	icon_state = "avian_upright"

/datum/sprite_accessory/hair/avian/mane
	name = "Avian Mane"
	icon_state = "avian_mane"

/datum/sprite_accessory/hair/avian/droopy
	name = "Avian Droopy"
	icon_state = "avian_droopy"

/datum/sprite_accessory/hair/avian/mushroom
	name = "Avian Mushroom"
	icon_state = "avian_mushroom"

/datum/sprite_accessory/marking/avian
	name = "Beak (Head)"
	icon_state = "beak"
	body_parts = list(BP_HEAD)
	icon = 'mods/species/neoavians/icons/markings.dmi'
	species_allowed = list(SPECIES_AVIAN)
	blend = ICON_MULTIPLY

/datum/sprite_accessory/marking/avian/resomi
	name = "Raptor Ears (Head)"
	icon_state = "ears"
	blend = ICON_ADD

/datum/sprite_accessory/marking/avian/tail
	name = "Tailfeathers (Groin)"
	icon_state = "feathered_tail"
	body_parts = list(BP_GROIN)

/datum/sprite_accessory/marking/avian/tail/resomi
	name = "Raptor Tail (Groin)"
	icon_state = "raptor_tail"

/datum/sprite_accessory/marking/avian/tail/resomi_feathers
	name = "Raptor Tailfeathers (Groin)"
	icon_state = "raptor_tail_feathers"

/datum/sprite_accessory/marking/avian/wing_feathers
	name = "Wing Feathers (Left)"
	body_parts = list(BP_L_HAND)
	icon_state = "wing_feathers"
	blend = ICON_ADD //wake me up

/datum/sprite_accessory/marking/avian/wing_feathers/right
	name = "Wing Feathers (Right)"
	body_parts = list(BP_R_HAND)

/datum/sprite_accessory/marking/avian/foot_feathers
	name = "Foot Feathers (Left)"
	body_parts = list(BP_L_FOOT)
	icon_state = "wing_feathers"
	blend = ICON_ADD

/datum/sprite_accessory/marking/avian/foot_feathers/right
	name = "Foot Feathers (Right)"
	body_parts = list(BP_R_FOOT)

/datum/sprite_accessory/hair/bald/New()
	..()
	LAZYADD(species_allowed, SPECIES_AVIAN)
