class_name WeaponAttackCard
extends Card

var damage_hp: int
var damage_sp: int
var pierce_def: bool
var target_effects: Array[Effect]
var self_effects: Array[Effect]
var required_weapon_type: Global.WeaponType

func _ready():
	super._ready()
	var d = descriptor as WeaponAttackDescriptor
	if d:
		damage_hp = d.damage_hp
		damage_sp = d.damage_sp
		pierce_def = d.pierce_def
		target_effects = d.target_effects
		self_effects = d.self_effects
		required_weapon_type = d.required_weapon_type
		type = Globals.CardType.W_ATTACK

func activate():
	super.activate()
	
	if not card_opponent:
		return
	
	card_opponent.hp -= damage_hp
	card_opponent.sp -= damage_sp
	
	for e in target_effects:
		card_opponent.add_effect(e)
	
	for e in self_effects:
		card_owner.add_effect(e)
