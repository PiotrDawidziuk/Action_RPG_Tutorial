extends Node2D

func create_grass_effet():
		var GrassEffect = load("res://Effects/grass_effect.tscn")
		var grassEffect = GrassEffect.instance()
		var world = get_tree().current_scene
		world.add_child(grassEffect)
		grassEffect.global_position = global_position
		
func _on_Hurtbox_area_entered(area):
	create_grass_effet()
	queue_free()
