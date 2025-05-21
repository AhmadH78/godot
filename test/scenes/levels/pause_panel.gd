extends Panel


func _on_continue_pressed() -> void:
	pass # Replace with function body.


func _on_main_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game_objects/main_char.tscn")
