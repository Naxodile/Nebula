#define SPECIES_AVIAN            "Teshari"
#define BODYTYPE_AVIAN           "avian body"
#define IS_AVIAN                 "teshari"
#define BODY_FLAG_AVIAN          BITFLAG(6)

/decl/modpack/neoavians
	name = "Neo-Avian Content"

/decl/prosthetics_manufacturer/Initialize()
	. = ..()
	LAZYDISTINCTADD(bodytypes_cannot_use, BODYTYPE_AVIAN)

/obj/machinery/suit_cycler/Initialize(mapload, d, populate_parts)
	. = ..()
	available_bodytypes |= BODYTYPE_AVIAN