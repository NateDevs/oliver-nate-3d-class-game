extends RayCast3D

@export var prompt_text : Label

func _physics_process(delta: float) -> void:
	prompt_text.text = ""
	
	if is_colliding():
		var collider = get_collider()
		
		if collider is Interactable:
			prompt_text.text = collider.interact_prompt
			
			if Input.is_action_just_pressed("interact"):
				collider.interact()
