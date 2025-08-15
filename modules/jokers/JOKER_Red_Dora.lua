SMODS.Joker{ --Red Dora
    key = "JOKER_Red_Dora",
    config = {
        extra = {
            mult = 0
        }
    },
    pos = {
        x = 1,
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
        return {vars = { card.ability.extra.mult}}
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            if (context.other_card:get_id() == 5 and context.other_card:is_suit("Hearts") or context.other_card:is_suit("Diamonds")) then
                card.ability.extra.mult = (card.ability.extra.mult) + 4
            end
        end
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    mult = card.ability.extra.mult
                }
        end
    end
}