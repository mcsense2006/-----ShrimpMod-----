SMODS.Joker{
    key = "JOKER_Four_Concealed_Triplets",
    config = {
        extra = {
            counttriplet = 0,
            Xmult = 4
        }
    },
    pos = {
        x = 5,
        y = 1
    },
    cost = 6,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    credit = {
        art = "Shrimp",
        code = "Shrimp",
        concept = "u/a45wesley",
    },
    loc_vars = function(self, info_queue, card)
        return {vars = { card.ability.extra.counttriplet}}
    end,
    set_badges = function(self, card, badges)
             badges[#badges+1] = create_badge('Mahjong Serie', G.C.WHITE, HEX("4BC292"), 1 )
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if next(context.poker_hands["Three of a Kind"]) then
                card.ability.extra.counttriplet = (card.ability.extra.counttriplet) + 1
                return {
                    message = "Updated!"
                }
            elseif (card.ability.extra.counttriplet or 0) == 4 then
                card.ability.extra.counttriplet = 0
                return {
                    Xmult = card.ability.extra.Xmult,
                    extra = {
                        message = "Reseted!",
                        colour = G.C.BLUE
                        }
                }
            end
        end
        if context.pre_discard  and not context.blueprint then
                return {
                    func = function()
                    card.ability.extra.counttriplet = 0
                    return true
                end,
                    message = "Reseted!"
                }
        end
    end
}