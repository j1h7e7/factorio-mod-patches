function ensure_tech_unlocks(tech_name, new_effect)
    local tech = data.raw["technology"][tech_name]

    for _, effect in ipairs(tech.effects or {}) do
        if effect == new_effect then return end
    end
    table.insert(tech.effects, new_effect)
end

ensure_tech_unlocks("sand-processing", "kr-sand")
ensure_tech_unlocks("sand-processing", "sand")
-- ensure_tech_unlocks("glass-processing", "kr-glass")
-- ensure_tech_unlocks("glass-processing", "glass")
