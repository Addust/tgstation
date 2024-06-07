//lavaland_surface_syndicate_base1.dmm and it's modules

/obj/machinery/vending/syndichem
	name = "\improper SyndiChem"
	desc = "A vending machine full of grenades and grenade accessories. Sponsored by Donk Co."
	req_access = list(ACCESS_SYNDICATE)
	products = list(/obj/item/stack/cable_coil = 5,
					/obj/item/assembly/igniter = 20,
					/obj/item/assembly/prox_sensor = 5,
					/obj/item/assembly/signaler = 5,
					/obj/item/assembly/timer = 5,
					/obj/item/assembly/voice = 5,
					/obj/item/assembly/health = 5,
					/obj/item/assembly/infra = 5,
					/obj/item/grenade/chem_grenade = 5,
	                /obj/item/grenade/chem_grenade/large = 5,
	                /obj/item/grenade/chem_grenade/pyro = 5,
	                /obj/item/grenade/chem_grenade/cryo = 5,
	                /obj/item/grenade/chem_grenade/adv_release = 5,
					/obj/item/reagent_containers/cup/glass/bottle/holywater = 1)
	product_slogans = "It's not pyromania if you're getting paid!;You smell that? Plasma, son. Nothing else in the world smells like that.;I love the smell of Plasma in the morning."
	resistance_flags = FIRE_PROOF

/obj/modular_map_root/syndicatebase
	config_file = "strings/modular_maps/syndicatebase.toml"

/obj/structure/closet/crate/secure/freezer/commsagent
	name = "Assorted Tongues And Tongue Accessories"
	desc = "Unearthing this was probably a mistake."

/obj/structure/closet/crate/secure/freezer/commsagent/PopulateContents()
	. = ..() //Contains a variety of less exotic tongues (And tongue accessories) for the comms agent to mess with.
	new /obj/item/organ/internal/tongue(src)
	new /obj/item/organ/internal/tongue/lizard(src)
	new /obj/item/organ/internal/tongue/fly(src)
	new /obj/item/organ/internal/tongue/zombie(src)
	new /obj/item/organ/internal/tongue/bone(src)
	new /obj/item/organ/internal/tongue/robot(src) //DANGER! CRYSTAL HYPERSTRUCTURE-
	new /obj/item/organ/internal/tongue/ethereal(src)
	new /obj/item/autosurgeon/syndicate/commsagent(src)
	new /obj/item/book/granter/sign_language(src)
	new	/obj/item/clothing/gloves/radio(src)

/obj/machinery/power/supermatter_crystal/shard/syndicate
	name = "syndicate supermatter shard"
	desc = "Your benefactors conveniently neglected to mention it's already assembled."
	anchored = TRUE
	radio_key = /obj/item/encryptionkey/syndicate
	emergency_channel = "Syndicate"
	warning_channel = "Syndicate"
	include_in_cims = FALSE

/obj/machinery/power/supermatter_crystal/shard/syndicate/attackby(obj/item/item, mob/living/user, params)
	if(istype(item, /obj/item/scalpel/supermatter)) //You can already yoink the docs as a free objective win, another would be just gross
		to_chat(user, span_danger("This shard's already in Syndicate custody, taking it again could cause more harm than good."))
		return
	else
		. = ..()

/obj/machinery/computer/terminal/syndicate_lavaland
	name = "syndicate cargo manifest terminal"
	desc = "A terminal responsible for keeping manifest of the base's supplies."
	icon_screen = "syndishuttle"
	icon_keyboard = "syndie_key"
	light_color = COLOR_SOFT_RED
	tguitheme = "syndicate"
	upperinfo = "CYBERSUN-INTERDYNE JOINT OUTPOST 88 CARGO MANIFEST - PROPERTY OF SYNDICATE COALITION"
	content = list("NOTICE: UPDATE MANIFESTS AFTER END OF YOUR SHIFT. FAILURE TO DO SO WILL RESULT IN RE-ASSIGNMENT.","<b>REPORT ALL MISSING SUPPLIES TO SYNDICATE COMMAND IMMEDIATELY.</b>","TWO SETS COMBAT UNIFORM","THREE SETS SYNDICATE HEADSET","THREE SETS FLASHLIGHT-EXTINGUISHER","SIX SETS DONK POCKETS","THREE SETS EMERGENCY RADIATION RESPONSE GEAR","TWO SETS AMMUNITION CONTAINER","ONE SET TOOLS","ONE SET MEDICAL EQUIPMENT","ONE BLUESPACE RAPID PART EXCHANGE DEVICE AND TOOLBELT","THREE SETS EMERGENCY INTERNALS","ONE SET RESERVE ENGINEERING PARTS","ONE O- BLOOD CRATE","ONE SURPLUS ROBOTIC LIMBS CONTAINER")

//This is a bad idea, so it's admin-intervention-only even to spawn, and it won't fly unless the admin basically goes "yea fuck it we ball"

/obj/machinery/computer/shuttle/syndicate_lavaland
	name = "syndicate ferry console"
	desc = "A Syndicate ferry's flight terminal. Doesn't seem to be authorised to go anywhere."
	icon_screen = "syndishuttle"
	icon_keyboard = "syndie_key"
	light_color = COLOR_SOFT_RED
	req_access = list(ACCESS_SYNDICATE)
	shuttleId = "syndicate_lavaland"
	possible_destinations = "syndicate_lava_arrivals" //its an admin shenanigan. no more
