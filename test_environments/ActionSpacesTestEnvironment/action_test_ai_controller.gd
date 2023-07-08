extends AIController2D

func get_obs() -> Dictionary:
	return {"obs":[]}

func get_reward() -> float:	
	return 0.0
	
# Print received action in console
func set_action(action) -> void:	
	print(action)
	
# Define test action spaces
var discrete_only_larger_than_2 : Dictionary = \
{
	"discrete_size_5" : {
		"size": 5,
		"action_type": "discrete"
	},
	"discrete_size_10" : {
		"size": 10,
		"action_type": "discrete"
	}	
}
var mixed_types_larger_than_2 : Dictionary = \
{
	"continuous_size_5" : {
		"size": 5,
		"action_type": "continuous"
	},
	"discrete_size_10" : {
		"size": 10,
		"action_type": "discrete"
	}	
}
var single_discrete_size_2 : Dictionary = \
{
	"discrete_size_2" : {
		"size": 2,
		"action_type": "discrete"
	}
}
var single_continuous_size_1 : Dictionary = \
{
	"continuous_size_1" : {
		"size": 1,
		"action_type": "continuous"
	}
}

func get_action_space() -> Dictionary:
	# Change to any of the test dictionaries for other tests
	return discrete_only_larger_than_2
