local player = EntityGetWithTag("player_unit")[1]
EntityRemoveComponent(player, EntityGetParent(GetUpdatedEntityID()))