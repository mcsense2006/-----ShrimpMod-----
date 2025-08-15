SMODS.Joker{ --Little Dragons
    key = "JOKER_Little_Dragons",
    config = {
        extra = {
            actualmult = 0
        }
    },
    pos = {
        x = 2,
        y = 2
    },
    cost = 5,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    loc_vars = function(self, info_queue, card)
        return {vars = { card.ability.extra.actualmult}}
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if ((function()
    local count = 0
    for _, playing_card in pairs(context.full_hand or {}) do
        if SMODS.get_enhancements(playing_card)["m_gold"] == true then
            count = count + 1
        end
    end
    return count >= 2
end)() or (function()
    local count = 0
    for _, playing_card in pairs(context.full_hand or {}) do
        if SMODS.get_enhancements(playing_card)["m_steel"] == true then
            count = count + 1
        end
    end
    return count >= 2
end)() or (function()
    local count = 0
    for _, playing_card in pairs(context.full_hand or {}) do
        if SMODS.get_enhancements(playing_card)["m_stone"] == true then
            count = count + 1
        end
    end
    return count >= 2
end)()) then
                card.ability.extra.actualmult = (card.ability.extra.actualmult) + 5
                return {
                    mult = card.ability.extra.actualmult
                }
            end
        end
    end
}