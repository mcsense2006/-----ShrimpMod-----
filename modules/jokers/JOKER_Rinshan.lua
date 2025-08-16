SMODS.Joker{
    key = "JOKER_Rinshan",
    config = {
        extra = {
            draw = 0,
            currenthandsize = 0
        }
    },
    pos = {
        x = 5,
        y = 5
    },
    cost = 5,
    rarity = 2,
    blueprint_compat = false,
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
        return {vars = { card.ability.extra.draw}}
    end,
    set_badges = function(self, card, badges)
             badges[#badges+1] = create_badge('Mahjong Serie', G.C.WHITE, HEX("4BC292"), 1 )
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  and not context.blueprint then
            if context.scoring_name == "Four of a Kind" then
                card.ability.extra.draw = (card.ability.extra.draw) + 2
                return {
                    func = function()
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "+"..tostring(card.ability.extra.draw).." Hand Size", colour = G.C.BLUE})
                G.hand:change_size(card.ability.extra.draw)
                return true
            end
                }
            elseif not (context.scoring_name ~= "Four of a Kind") then
                card.ability.extra.draw = 0
                return {
                    func = function()
                local current_hand_size = G.hand.config.card_limit
                local target_hand_size = (G.hand and G.hand.config.card_limit or 0)
                local difference = target_hand_size - current_hand_size
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Hand Size set to "..tostring((G.hand and G.hand.config.card_limit or 0)), colour = G.C.BLUE})
                G.hand:change_size(difference)
                return true
            end
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval  and not context.blueprint then
                return {
                    func = function()
                    card.ability.extra.draw = 0
                    return true
                end,
                    extra = {
                        func = function()
                local current_hand_size = G.hand.config.card_limit
                local target_hand_size = (G.hand and G.hand.config.card_limit or 0)
                local difference = target_hand_size - current_hand_size
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Hand Size set to "..tostring((G.hand and G.hand.config.card_limit or 0)), colour = G.C.BLUE})
                G.hand:change_size(difference)
                return true
            end,
                        colour = G.C.BLUE
                        }
                }
        end
    end
}