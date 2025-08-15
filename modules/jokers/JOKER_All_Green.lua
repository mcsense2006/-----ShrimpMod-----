SMODS.Joker{ --All green
    key = "JOKER_All_Green",
    config = {
        extra = {
            mult = 1
        }
    },
    pos = {
        x = 0,
        y = 5
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
        concept = " u/a45wesley",
    },
    loc_vars = function(self, info_queue, card)
            return {vars = { card.ability.extra.mult}}
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if (next(context.poker_hands["Flush"]) and (function()
    local allMatchSuit = true
    for i, c in ipairs(context.scoring_hand) do
        if not (c:is_suit("Clubs")) then
            allMatchSuit = false
            break
        end
    end
    
    return allMatchSuit and #context.scoring_hand > 0
end)()) then
                card.ability.extra.mult = (card.ability.extra.mult) + 1
                return {
                    message = "updated!",
                    extra = {
                        Xmult = card.ability.extra.mult
                        }
                }
            end
        end
    end
}