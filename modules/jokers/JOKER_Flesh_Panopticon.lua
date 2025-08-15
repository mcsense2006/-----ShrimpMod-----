SMODS.Joker{
    key = "JOKER_Flesh_Panopticon",
    pos = { x = 0, y = 0 },
    config = {
        extra = {
            Xchips = 0,
            count = 0,
        }
    },
    cost = 15,
    rarity = 'shrimp_epic',
    blueprint_compat = true,
    eternal_compat = false,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    
    loc_vars = function(self, info_queue, card)
        return {vars = { card.ability.extra.Xchips, card.ability.extra.count}}
    end,
    calculate = function(self, card, context)
        if context.ending_shop  and not context.blueprint then
                return {
                    func = function()
                    card.ability.extra.Xchips = (card.ability.extra.Xchips) + (G.GAME.dollars) * 0.1
                    return true
                end
                }
        end
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    x_chips = card.ability.extra.Xchips
                }
        end
        if context.selling_self  and not context.blueprint then
            if (card.ability.extra.count or 0) >= 10 then
                return {
                    func = function()
            local created_joker = true
            G.E_MANAGER:add_event(Event({
                func = function()
                    local joker_card = SMODS.add_card({ set = 'Joker', key = 'j_joker' })
                    return true
                end
            }))
            if created_joker then
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Summoned!", colour = G.C.BLUE})
            end
            return true
        end
                }
            end
        end
        if context.using_consumeable  and not context.blueprint then
                return {
                    func = function()
                    card.ability.extra.count = (card.ability.extra.count) + 1
                    return true
                end
                }
        end
    end
}