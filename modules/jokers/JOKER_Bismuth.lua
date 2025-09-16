SMODS.Joker{ --Bismuth
    key = "JOKER_Bismuth",
    config = {
        extra = {
            mult = 5,
            Xmult = 1.3,
            chips = 30,
            dollars = 1
        }
    },
    pos = {
        x = 0,
        y = 0
    },
    cost = 5,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            if SMODS.get_enhancements(context.other_card)["m_wild"] == true then
                return {
                    mult = card.ability.extra.mult,
                    extra = {
                        Xmult = card.ability.extra.Xmult,
                        extra = {
                            chips = card.ability.extra.chips,
                            colour = G.C.CHIPS,
                        extra = {
                            dollars = card.ability.extra.dollars,
                            colour = G.C.MONEY
                        }
                        }
                        }
                }
            end
        end
    end
}