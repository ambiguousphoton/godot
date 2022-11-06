extends Node2D

var turn1 = true
var ch = 'X'
var ch2 = 'O'
var row1 = [
			['0','0','0'],
			['0','0','0'], 
			['0','0','0']
			]

func _ready():
	for x in 3:
		for y in 3:
			print(str(row1[x][y]) + ",")
	start()
	
func _physics_process(delta):


	if row1[0][0] != '0':
		$"Node2D/0,0".disabled = true
	if row1[0][1] != '0':
		$"Node2D/0,1".disabled = true
	if row1[0][2] != '0':
		$"Node2D/0,2".disabled = true
		
	if row1[1][0] != '0':
		$"Node2D/1,0".disabled = true
	if row1[1][1] != '0':
		$"Node2D/1,1".disabled = true
	if row1[1][2] != '0':
		$"Node2D/1,2".disabled = true

	if row1[2][0] != '0':
		$"Node2D/2,0".disabled = true
	if row1[2][1] != '0':
		$"Node2D/2,1".disabled = true
	if row1[2][2] != '0':
		$"Node2D/2,2".disabled = true
#	player_turn()
#	print(row1[0][1])


func start():
	var ran = RandomNumberGenerator.new()
	var turn = ran.randi_range(0,1)
	if turn == 0:
		pass
	else:
		turn1 = false
		ai_turn()



			
	

func check():
	var prev = '0'
	var count = 1
	for x in 3:
		count = 1
		for y in 3:
		
			if prev != '0' && prev == row1[x][y]:
				count += 1
				if count == 3:
					if row1[x][y] == ch:
						print("you won")
					else:
						print("ai won")
			else:
				prev = row1[x][y]
				
		prev = '0'
		

	var county = 1
	for x in 3:
		count = 1
		for y in 3:
			if prev != '0' && prev == row1[y][x]:
				county += 1
				if county == 3:
					if row1[y][x] == ch:
						print("you won")
					else:
						print("ai won")
			else:
				prev = row1[y][x]
				 
		prev = '0'
		county  = 1
		
	if (row1[0][0] == row1[1][1] && row1[1][1] == row1[2][2]) && row1[0][0] != '0':
		if row1[0][0] == ch:
			print("you won")
		else:
			print("ai won")
	if (row1[0][2] == row1[1][1] && row1[1][1] == row1[2][0]) && row1[0][2] != '0':
		if row1[0][2] == ch:
			print("you won")
		else:
			print("ai won")
	
	
	
#	$Label2.text = str(count)
#	$Label3.text = str(county)
	#
#	if row1[0][0] == row1[0][1] == row1[0][2] or row1[1][0] == row1[1][1] == row1[1][2] or row1[2][0] == row1[2][1] == row1[2][2]  :
#		if row1[0][0] != 0 or row1[1][0] != 0 or row1[2][0] != 0:
#			print("you won")
#			return
#	if row1[0][0] == row1[1][0] == row1[2][0] or row1[0][1] == row1[1][1] == row1[2][1] or row1[0][2] == row1[1][2] == row1[2][2] :
	return
	
func ai_turn():
	var iAR = []

	if turn1 == false:
		var ran = RandomNumberGenerator.new()
		var x = ran.randi_range(0,2)
		var y = ran.randi_range(0,2)

		if row1[x][y] == '0':
			row1[x][y] = ch2 
			var st = "/"+ str(x) +","+ str(y) +"/Label"
			get_node("Node2D"+st).text = ch2
		


func _on_00_button_down():
	$"Node2D/0,0/Label".text = ch
	row1[0][0] = ch
	check()
	$"Node2D/0,0".disabled = true
	ai_turn()
	pass # Replace with function body.


func _on_01_button_down():
	$"Node2D/0,1/Label".text = ch
	row1[0][1] = ch
	$"Node2D/0,1".disabled = true
	check()
	ai_turn()
	pass # Replace with function body.


func _on_02_button_down():
	$"Node2D/0,2/Label".text = ch
	row1[0][2] = ch
	check()
	$"Node2D/0,2".disabled = true
	ai_turn()
	pass # Replace with function body.


func _on_12_button_down():
	$"Node2D/1,2/Label".text = ch
	row1[1][2] = ch
	check()
	ai_turn()
	pass # Replace with function body.


func _on_11_button_down():
	$"Node2D/1,1/Label".text = ch
	row1[1][1] = ch
	check()
	ai_turn()
	pass # Replace with function body.


func _on_20_button_down():
	$"Node2D/2,0/Label".text = ch
	row1[2][0] = ch
	check()
	ai_turn()
	pass # Replace with function body.


func _on_21_button_down():
	$"Node2D/2,1/Label".text = ch
	row1[2][1] = ch
	check()
	ai_turn()
	pass # Replace with function body.


func _on_22_button_down():
	$"Node2D/2,2/Label".text = ch
	row1[2][2] = ch
	check()
	ai_turn()
	pass # Replace with function body.


func _on_10_button_down():
	$"Node2D/1,0/Label".text = ch
	row1[1][0] = ch
	check()
	ai_turn()
	pass # Replace with function body.
