extends AIController2D

# Used to get varied action values
# from a deterministic policy if true
var use_random_observations : bool = false

func sample_observation_value() -> float:
	if (use_random_observations):
		return randf_range(-1, 1)
	else:
		return 1.0

func get_obs() -> Dictionary:
	return {"obs":[sample_observation_value()]}

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
