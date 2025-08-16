SMODS.Joker{
    key = 'JOKER_Broken_Limbs',
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    cost = 5,
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    config = {
        extra = {
            Xmult = 1
        }
    },
    credit = {
        art = "TheCater_",
        code = "Shrimp",
        concept = "@andresirlo",
    },
    loc_vars = function(self, info_queue, card)
            return {vars = { card.ability.extra.Xmult}}
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  and not context.blueprint then
                card.ability.extra.Xmult = (card.ability.extra.Xmult) + 0.5
                return {
                    Xmult = card.ability.extra.Xmult
                }
        end
        if context.end_of_round and context.game_over == false and context.main_eval  and not context.blueprint then
                return {
                    func = function()
                    card.ability.extra.Xmult = 1
                    return true
                end
                }
        end
    end
}