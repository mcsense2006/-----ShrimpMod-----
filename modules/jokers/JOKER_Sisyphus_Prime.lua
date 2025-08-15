SMODS.Joker{
    key = "JOKER_Sisyphus_Prime",
    config = {
        extra = {
            Xmult = 1,
            repetitions = 8
        }
    },
    pos = {
        x = 0,
        y = 0
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
            if context.other_card == context.scoring_hand[1] then
                return {
                    repetitions = card.ability.extra.repetitions,
                    message = localize('k_again_ex')
                }
            end
        end
        if context.individual and context.cardarea == G.play  then
            if context.other_card == context.scoring_hand[1] then
                card.ability.extra.Xmult = (card.ability.extra.Xmult) + 0.25
                return {
                    message = "Updated!"
                }
            end
        end
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    Xmult = card.ability.extra.Xmult
                }
        end
    end
}