/obj/machinery/computer/shuttle/soviet_flagship
	name = "soviet shuttle control console"
	desc = "Used to control the old Third Soviet Union flagship, the PWS Khranitel Revolyutsii."
	shuttleId = "soviet_flagship"
	possible_destinations = "whiteship_away;soviet_flagship_home;whiteship_z4;whiteship_waystation;whiteship_lavaland;soviet_flagship_custom"

/obj/machinery/computer/camera_advanced/shuttle_docker/soviet_flagship
	name = "soviet navigation computer"
	desc = "An old Soviet navigation computer. Responsible for navigating the PWS Khranitel Revolyutsii."
	shuttleId = "soviet_flagship"
	lock_override = NONE
	shuttlePortId = "soviet_flagship_custom"
	jump_to_ports = list("whiteship_away" = 1, "soviet_flagship_home" = 1, "whiteship_z4" = 1, "whiteship_waystation" = 1)
	view_range = 10
	x_offset = -6
	y_offset = -10
	designate_time = 150 //its an old shitty soviet flagship, slow motherfucker

/obj/machinery/computer/camera_advanced/shuttle_docker/soviet_flagship/Initialize(mapload)
	. = ..()
	GLOB.jam_on_wardec += src

/obj/machinery/computer/camera_advanced/shuttle_docker/soviet_flagship/Destroy()
	GLOB.jam_on_wardec -= src
	return ..()
