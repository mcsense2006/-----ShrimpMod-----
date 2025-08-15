SMODS.Joker{
    key = 'JOKER_Canva',
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    cost = 15,
    rarity = 'shrimp_epic',
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    config = { extra = { } },
    credit = {
    art = "",
    code = "",
    concept = "Shrimp",
},
    calculate = function(self, card, context)
        local target_joker = nil
        
        local my_pos = nil
        for i = 1, #G.jokers.cards do
            if G.jokers.cards[i] == card then
                my_pos = i
                break
            end
        end
        target_joker = (my_pos and my_pos > 1) and G.jokers.cards[my_pos - 1] or nil
        
        return SMODS.blueprint_effect(card, target_joker, context)
    end,

    calculate = function(self, card, context)
        local target_joker = nil
        
        local my_pos = nil
        for i = 1, #G.jokers.cards do
            if G.jokers.cards[i] == card then
                my_pos = i
                break
            end
        end
        target_joker = (my_pos and my_pos < #G.jokers.cards) and G.jokers.cards[my_pos + 1] or nil
        
        return SMODS.blueprint_effect(card, target_joker, context)
    end
}