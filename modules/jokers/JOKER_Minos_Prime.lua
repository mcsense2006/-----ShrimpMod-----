SMODS.Joker{
    key = "JOKER_Minos_Prime",
    config = {
        extra = {
            Xmult = 1,
            repetitions = 2,
            repetitions2 = 2
        }
    },
    pos = {
        x = 6,
        y = 4
    },
    soul_pos = {
        x = 7,
        y = 4
    },
    cost = 30,
    rarity = 'shrimp_prime',
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    loc_vars = function(self, info_queue, card)
            return {vars = { card.ability.extra.Xmult}}
    end,

    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play  then
                return {
                    repetitions = card.ability.extra.repetitions,
                    message = localize('k_again_ex')
                }
        end
        if context.repetition and context.cardarea == G.hand and (next(context.card_effects[1]) or #context.card_effects > 1)  then
                return {
                    repetitions = card.ability.extra.repetitions2,
                    message = localize('k_again_ex')
                }
        end
        if context.end_of_round and context.main_eval and G.GAME.blind.boss  then
                return {
                    func = function()
                    card.ability.extra.Xmult = (card.ability.extra.Xmult) + 0.5
                    return true
                end,
                    message = "Updated!"
                }
        end
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    Xmult = card.ability.extra.Xmult
                }
        end
    end
}