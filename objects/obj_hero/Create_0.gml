/// @description Define the basic character sheet

//inherit the settings from the main entity object
event_inherited();




//Lore/Storytelling
creature_race        = "Human";
creature_race_plural = "Humans";
creature_description = "Look in a mirror and you'll see all that you need to know about these creatures.";

//character level and experiance
character_level = 1;
character_xp    = 0;

//health and magic
stats_max_health = 30;
stats_max_energy = 30;

//attributes
attribute_str = 8;
attribute_dex = 8;
attribute_con = 8;
attribute_int = 8;
attribute_wis = 8;
attribute_chr = 8;

//inventory - equipped
equipped_helmet     = noone;
equipped_amulet     = noone;
equipped_shoulders  = noone;
equipped_torso      = noone;
equipped_gloves     = noone;
equipped_belt       = noone;
equipped_legs       = noone;
equipped_boots      = noone;
equipped_weapon     = noone;
equipped_offhand    = noone;
equipped_left_ring  = noone;
equipped_right_ring = noone;

//inventory - not equipped
inventory = ds_list_create();

//abilities (spells are just abilities)
abilities = ds_list_create();

//
initiative = 5;

/////////////////////////////////////

//behviour logic - all "player" actions are handled by the human
entity_state = enum_entity_state.idle;
entity_logic[enum_entity_state.idle] = player_movement;

/////////////////////////////////////

//give the player a weapon
equipped_weapon = instance_create_layer(0, 0, "Instances", obj_item_weapon_quarterstaff);



ds_list_add(abilities, "walk");
ds_list_add(abilities, "crouch");
ds_list_add(abilities, "stand");
ds_list_add(abilities, "attack");
ds_list_add(abilities, "shoot");

/////////////////////////////////////

stats_health = stats_max_health;
stats_energy = stats_max_energy;

