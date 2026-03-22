@abstract
@icon("res://assets/sprites/cardicon.svg")
class_name Card
extends Node2D

enum DeployState {UNDEPLOYED, DEPLOYED, HOTBAR}
var current_state: DeployState = DeployState.UNDEPLOYED

var representation: Sprite2D
var draw_cost: int = 0
var active_cost: int = 0
var bp_cost: int = 0
var card_name: String
var card_owner: Player
var card_opponent: Player = card_owner.opponent
@export var descriptor: CardDescriptor


var flavour_text: String 
var type: Globals.CardType

func _ready() -> void:
	if descriptor:
		draw_cost = descriptor.vDraw_cost
		type = descriptor.vCard_type
		flavour_text = descriptor.vFlavour_text
		active_cost= descriptor.vActive_cost
		bp_cost= descriptor.vBP_cost
		card_name= descriptor.vName
	

func draw():
	card_owner.SP -= draw_cost
	current_state = DeployState.DEPLOYED

func activate():
	card_owner.SP -= active_cost
