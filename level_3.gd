extends Node2D


@onready var health_bar = $CanvasLayer/Healthbar
@onready var player = $Player/Player

func _ready():
	health_bar.max_value = player.health
	health_bar.value = health_bar.max_value


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_player_health_changed(new_health):
	health_bar.value = new_health
