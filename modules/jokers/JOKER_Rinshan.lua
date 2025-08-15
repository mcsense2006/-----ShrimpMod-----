SMODS.Joker{ --Rinshan
    key = "JOKER_Rinshan",
    config = {
        extra = {
            howmuchdraws = 0
        }
    },
    pos = {
        x = 0,
        y = 0
    },
    cost = 5,
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',

    loc_vars = function(self, info_queue, card)
        return {vars = { card.ability.extra.howmuchdraws}}
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  and not context.blueprint then
            if context.scoring_name == "Four of a Kind" then
                card.ability.extra.howmuchdraws = (card.ability.extra.howmuchdraws) + 2
                return {
                    func = function()
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "+"..tostring(card.ability.extra.howmuchdraws).." Hand Size", colour = G.C.BLUE})
                G.hand:change_size(card.ability.extra.howmuchdraws)
                return true
            end
                }
            elseif not (context.scoring_name ~= "Four of a Kind") then
                card.ability.extra.howmuchdraws = math.max(0, (card.ability.extra.howmuchdraws) - 2)
                return {
                    func = function()
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "-"..tostring(card.ability.extra.howmuchdraws).." Hand Size", colour = G.C.RED})
                G.hand:change_size(-card.ability.extra.howmuchdraws)
                return true
            end
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval  and not context.blueprint then
                return {
                    func = function()
                    card.ability.extra.howmuchdraws = 0
                    return true
                end,
                    extra = {
                        func = function()
                local current_hand_size = G.hand.config.card_limit
                local target_hand_size = G.GAME.round_resets.hands
                local difference = target_hand_size - current_hand_size
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Hand Size set to "..tostring(G.GAME.round_resets.hands), colour = G.C.BLUE})
                G.hand:change_size(difference)
                return true
            end,
                        colour = G.C.BLUE
                        }
                }
        end
    end
}