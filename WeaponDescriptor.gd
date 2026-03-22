extends CardDescriptor
class_name WeaponDescriptor

enum WeaponType {Sword, Ball, Sling, Launcher, Hammer, Paint, Coils}

@export_category("Weapon Description")
@export var vWeapon_type: WeaponType 
@export var vDMG: int
@export var vHas_attack: bool
