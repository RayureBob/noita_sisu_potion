function damage_received( damage, message, entity_thats_responsible, is_fatal, projectile_thats_responsible )
    if message == "You bit more than you could chew..." then
        return
    end
    
    EntityInflictDamage(GetUpdatedEntityID(), damage, "DAMAGE_POISON", "You bit more than you could chew...", "BLOOD_SPRAY", 0, 0, GetUpdatedEntityID())
end