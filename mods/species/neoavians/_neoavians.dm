#define SPECIES_AVIAN            "Teshari"
#define BODYTYPE_AVIAN           "avian body"
#define IS_AVIAN                 "teshari"

/decl/modpack/neoavians
	name = "Neo-Avian Content"

/decl/modpack/neoavians/initialize()
	. = ..()
	LAZYSET(global.holder_mob_icons, lowertext(SPECIES_AVIAN), 'mods/species/neoavians/icons/holder.dmi')

/decl/prosthetics_manufacturer/New()
	..()
	LAZYDISTINCTADD(bodytypes_cannot_use, BODYTYPE_AVIAN)

/obj/machinery/suit_cycler/Initialize(mapload, d, populate_parts)
	. = ..()
	available_bodytypes |= BODYTYPE_AVIAN