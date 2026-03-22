class_name WeaponCard
extends Card

var damage_hp: int
var damage_mhp: int
var damage_sp: int
var target_effects: Array[Effect]
var self_effects: Array[Effect]

func _init() -> void:
	type = Globals.CardType.WEAPON
	draw_cost = 0

func activate(): 
	super()
	
	card_opponent.HP -= damage_hp
	card_opponent.MHP -= damage_mhp
	card_opponent.SP -= damage_sp
	
