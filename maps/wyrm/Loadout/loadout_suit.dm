// Suit slot
/datum/gear/suit/roles/poncho/security
	allowed_roles = list(/datum/job/hos, /datum/job/warden, /datum/job/detective, /datum/job/officer)

/datum/gear/suit/roles/poncho/medical
	allowed_roles = list(/datum/job/doctor,/datum/job/cmo,/datum/job/chemist,)

/datum/gear/suit/roles/poncho/engineering
	allowed_roles = list(/datum/job/chief_engineer, /datum/job/engineer)

/datum/gear/suit/roles/poncho/science
	allowed_roles = list(/datum/job/rd, /datum/job/scientist, /datum/job/roboticist)

/datum/gear/suit/roles/poncho/cargo
	allowed_roles = list(/datum/job/qm,/datum/job/cargo_tech)

/datum/gear/suit/wintercoat/captain
	display_name = "winter coat, captain"
	path = /obj/item/clothing/suit/storage/hooded/wintercoat/captain
	allowed_roles = list(/datum/job/captain)

/datum/gear/suit/wintercoat/security
	display_name = "winter coat, security"
	path = /obj/item/clothing/suit/storage/hooded/wintercoat/security
	allowed_roles = list(/datum/job/officer, /datum/job/hos, /datum/job/warden, /datum/job/detective)

/datum/gear/suit/wintercoat/medical
	display_name = "winter coat, medical"
	path = /obj/item/clothing/suit/storage/hooded/wintercoat/medical
	allowed_roles = list(/datum/job/doctor,/datum/job/cmo,/datum/job/chemist,)

/datum/gear/suit/wintercoat/science
	display_name = "winter coat, science"
	path = /obj/item/clothing/suit/storage/hooded/wintercoat/science
	allowed_roles = list(/datum/job/rd,/datum/job/scientist, /datum/job/roboticist)

/datum/gear/suit/wintercoat/engineering
	display_name = "winter coat, engineering"
	path = /obj/item/clothing/suit/storage/hooded/wintercoat/engineering
	allowed_roles = list(/datum/job/chief_engineer, /datum/job/engineer)

/datum/gear/suit/wintercoat/atmos
	display_name = "winter coat, atmospherics"
	path = /obj/item/clothing/suit/storage/hooded/wintercoat/engineering/atmos
	allowed_roles = list(/datum/job/chief_engineer, /datum/job/engineer)

/datum/gear/suit/wintercoat/hydro
	display_name = "winter coat, hydroponics"
	path = /obj/item/clothing/suit/storage/hooded/wintercoat/hydro
	allowed_roles = list(/datum/job/hydro)

/datum/gear/suit/wintercoat/cargo
	display_name = "winter coat, cargo"
	path = /obj/item/clothing/suit/storage/hooded/wintercoat/cargo
	allowed_roles = list(/datum/job/qm,/datum/job/cargo_tech)

/datum/gear/suit/wintercoat/miner
	display_name = "winter coat, mining"
	path = /obj/item/clothing/suit/storage/hooded/wintercoat/miner
	allowed_roles = list(/datum/job/mining)
