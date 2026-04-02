extends Node

func destroy_self() -> void:
	owner.queue_free()
	
