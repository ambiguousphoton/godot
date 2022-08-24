extends Node2D
var ok = false
var set = 0
var dfs = true
var bfs = false
var size = Vector2(0.25, 0.25)
var  pos 

func _ready():
	
	pass # Replace with function body.

func _input(event):
		
		pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		set = 1
	else :
		set = 0
	if dfs == true:
		$Label.set_text( "DFS SEARCH")
	if bfs == true:
		$Label.set_text( "BFS SEARCH")
	print(get_global_mouse_position())
	if ok == true and set==1:
		$scale_class/node.set_global_position(get_global_mouse_position())
		
#	if set==1:
#		$node.set_position( pos) 
##	pass


func _on_DFS_pressed():
	dfs = true
	bfs = false
	pass # Replace with function body.


func _on_BFS_pressed():
	bfs = true
	dfs = false
	pass # Replace with function body.


func _on_node_pressed():
	$scale_class.set_scale(size)
	set = 1
	pass # Replace with function body.


func _on_create_node_pressed():
	pass # Replace with function body.


func _on_Timer_timeout():
	ok = true
	pass # Replace with function body.

$node.
