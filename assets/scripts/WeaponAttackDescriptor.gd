extends CardDescriptor
class_name WeaponAttackDescriptor

@export_category("Weapon Attack")
@export var damage_hp: int = 0
@export var damage_sp: int = 0
@export var pierce_def: bool = false
@export var target_effects: Array[Effect]
@export var self_effects: Array[Effect]
@export var required_weapon_type: Global.WeaponType
