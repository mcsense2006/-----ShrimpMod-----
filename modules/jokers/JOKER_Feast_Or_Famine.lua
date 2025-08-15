SMODS.Joker{
    key = 'JOKER_Feast_Or_Famine',
    atlas = 'Jokers',
    pos = {x = 6, y = 2},
    cost = 3,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    config = {
        extra = {
            progress = 0, -- goes from 0 to 1
            spent = 0     -- total spent since last reset
        }
    },    credit = {
    art = "Shrimp",
    code = "",
    concept = "@andresirlo",
},
    loc_vars = function(self, info_queue, card)
        return { vars = { string.format("%.2f", card.ability.extra.progress) } }
    end,
    loc_vars = function(self, info_queue, card)
            return {vars = { card.ability.extra.spent}}
    end,

    calculate = function(self, card, context)
        -- Track money spent in shop
        if context.buying_card and context.card_cost then
            card.ability.extra.spent = (card.ability.extra.spent or 0) + context.card_cost

            -- Every $25 spent, add to progress (max 1.0)
            while card.ability.extra.spent >= 25 do
                card.ability.extra.spent = card.ability.extra.spent - 25
                card.ability.extra.progress = math.min(1.0, card.ability.extra.progress + 0.01)
                card_eval_status_text(card, 'extra', nil, nil, nil, {message = "+Progress", colour = G.C.GREEN})
            end
        end

        -- Reset on boss blind defeat
        if context.blind and context.blind.boss and context.blind.defeated then
            card.ability.extra.progress = 0
            card.ability.extra.spent = 0
            card_eval_status_text(card, 'extra', nil, nil, nil, {message = "Reset", colour = G.C.RED})
        end

        -- Apply ×3 mult when progress is full and a hand is being scored
        if context.joker_main and card.ability.extra.progress >= 1.0 then
            return {
                xmult = 3
            }
        end
    end
}