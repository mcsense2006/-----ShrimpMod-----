SMODS.Joker{
    key = 'JOKER_Paper_Shredder',
    atlas = 'Jokers',
    pos = {x = 6, y = 3},
    cost = 3,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    config = { extra = { } },
    credit = {
    art = "Shrimp",
    code = "",
    concept = "@andresirlo",
},
    calculate = function(self, card, context)
    end,

    add_to_deck = function(self, card, from_debuff)
        card.ability.extra.original_play_size = G.GAME.starting_params.discard_limit
        local difference = 1e+100 - G.GAME.starting_params.discard_limit
        SMODS.change_discard_limit(difference)
    end,

    remove_from_deck = function(self, card, from_debuff)
        if card.ability.extra.original_play_size then
            local difference = card.ability.extra.original_play_size - G.GAME.starting_params.discard_limit
            SMODS.change_discard_limit(difference)
        end
    end
}