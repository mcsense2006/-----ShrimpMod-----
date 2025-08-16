SMODS.Joker{
    key = "JOKER_All_Terminals",
    config = {
        extra = {
            mult = 1
        }
    },
    pos = {
        x = 6,
        y = 2
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
    set_badges = function(self, card, badges)
             badges[#badges+1] = create_badge('Mahjong Serie', G.C.WHITE, HEX("4BC292"), 1 )
    end,
    loc_vars = function(self, info_queue, card)
            return {vars = { card.ability.extra.mult}}
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  and not context.blueprint then
            if (context.other_card:get_id() == 14 or context.other_card:is_face()) then
                card.ability.extra.mult = (card.ability.extra.mult) + 0.2
            end
        end
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    Xmult = card.ability.extra.mult
                }
        end
    end
}