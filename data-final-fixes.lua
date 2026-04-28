function tablesEqual(t1, t2)
    for k, v in pairs(t1) do
        if t2[k] ~= v then return false end
    end
    return true
end

function ensure_tech_unlocks(tech_name, new_effect)
    local tech = data.raw["technology"][tech_name]

    for _, effect in ipairs(tech.effects or {}) do
        if tablesEqual(effect, new_effect) then return end
    end
    table.insert(tech.effects, new_effect)
end

ensure_tech_unlocks("sand-processing", { type = "unlock-recipe", recipe = "kr-sand" })
ensure_tech_unlocks("sand-processing", { type = "unlock-recipe", recipe = "sand" })
-- ensure_tech_unlocks("glass-processing", "kr-glass")
-- ensure_tech_unlocks("glass-processing", "glass")
