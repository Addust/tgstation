/// Russian trooper subtype
/mob/living/basic/trooper/russian
	name = "Russian Mobster"
	desc = "A seemingly Space-Russian mobster wielding a kitchen knife. Doesn't seem happy to see you."
	speed = 1.2
	melee_damage_lower = 15
	melee_damage_upper = 15
	unsuitable_cold_damage = 1
	unsuitable_heat_damage = 1
	faction = list(FACTION_RUSSIAN)
	attack_verb_continuous = "slashes"
	attack_verb_simple = "slash"
	attack_sound = 'sound/weapons/bladeslice.ogg'
	attack_vis_effect = ATTACK_EFFECT_SLASH

	mob_spawner = /obj/effect/mob_spawn/corpse/human/russian
	r_hand = /obj/item/knife/kitchen
	loot = list(
		/obj/effect/mob_spawn/corpse/human/russian,
		/obj/item/knife/kitchen,
	)

/mob/living/basic/trooper/russian/ranged
	desc = "A seemingly Space-Russian mobster wielding a Nagant revolver. Definitely doesn't seem happy to see you."
	ai_controller = /datum/ai_controller/basic_controller/trooper/ranged
	mob_spawner = /obj/effect/mob_spawn/corpse/human/russian/ranged
	r_hand = /obj/item/gun/ballistic/revolver/nagant
	loot = list(
		/obj/effect/mob_spawn/corpse/human/russian/ranged,
		/obj/item/gun/ballistic/revolver/nagant,
	)
	var/casingtype = /obj/item/ammo_casing/n762
	var/projectilesound = 'sound/weapons/gun/revolver/shot.ogg'

/mob/living/basic/trooper/russian/ranged/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/ranged_attacks, casing_type = casingtype, projectile_sound = projectilesound, cooldown_time = 1 SECONDS)

/mob/living/basic/trooper/russian/ranged/lootless
	loot = list(/obj/effect/mob_spawn/corpse/human/russian/ranged) //let them have the drip, the gun is the loot no?

/mob/living/basic/trooper/russian/ranged/officer
	name = "Russian Officer"
	desc = "An officer in uniform of the Third Soviet Union, wielding a Nagant revolver. Definitely isn't happy to see you."
	mob_spawner = /obj/effect/mob_spawn/corpse/human/russian/ranged/officer
	loot = list(
		/obj/effect/mob_spawn/corpse/human/russian/ranged/officer,
		/obj/item/gun/ballistic/revolver/nagant
	)

/mob/living/basic/trooper/russian/ranged/soldier
	name = "Russian Soldier"
	desc = "A soldier wearing uniform of the Third Soviet Union, clutching an old bolt-action rifle."
	mob_spawner = /obj/effect/mob_spawn/corpse/human/russian/ranged/trooper
	loot = list(
		/obj/effect/mob_spawn/corpse/human/russian/ranged/trooper,
		/obj/item/gun/ballistic/rifle/boltaction/surplus //ay blyat
	)
	r_hand = /obj/item/gun/ballistic/rifle/boltaction/surplus
	casingtype = /obj/item/ammo_casing/strilka310/surplus
	projectilesound = 'sound/weapons/gun/rifle/shot_heavy.ogg'

/mob/living/basic/trooper/russian/engineer
	name = "Russian Engineer"
	desc = "Trust me, I'm an engineer!"
	mob_spawner = /obj/effect/mob_spawn/corpse/human/russian/engineer
	r_hand = /obj/item/storage/toolbox/mechanical
	loot = list(
		/obj/effect/mob_spawn/corpse/human/russian/engineer,
		/obj/item/storage/toolbox/mechanical
	)
	attack_verb_continuous = "bashes"
	attack_verb_simple = "bash"
	attack_sound = 'sound/weapons/smash.ogg'
	attack_vis_effect = ATTACK_EFFECT_SMASH

/mob/living/basic/trooper/russian/ranged/soldier/lieutenant
	name = "Russian Lieutenant"
	desc = "A senior soldier of the residual Third Soviet Union, still clutching their rifle."
	r_hand = /obj/item/gun/ballistic/rifle/boltaction
	mob_spawner = /obj/effect/mob_spawn/corpse/human/russian/ranged/trooper/lieutenant
		loot = list(
		/obj/effect/mob_spawn/corpse/human/russian/ranged/trooper/lieuteannt,
		/obj/item/gun/ballistic/rifle/boltaction //ONLY KOMISSAR CAN AFFORD NOT SHIT GUN
	)
