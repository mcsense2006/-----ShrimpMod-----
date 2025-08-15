SMODS.Joker{
    key = 'JOKER_Oops_all_1s',
    atlas = 'Jokers',
    pos = { x = 1, y = 0 },
    config = {
        extra = {
            mod_probability = 2,
            numerator = 0
        }
    },
    rarity = 2,
    cost = 4,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlock_card = true,
    discovered = true,
    credit = {
    art = "Shrimp",
    code = "Shrimp",
    concept = "Shrimp",
},
    calculate = function(self, card, context)
          if context.mod_probability  then
          local numerator, denominator = context.numerator, context.denominator
                  numerator = numerator / card.ability.extra.mod_probability
        return {
          numerator = numerator, 
          denominator = denominator
        }
          end
    end
}

