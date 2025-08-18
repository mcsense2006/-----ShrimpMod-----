SMODS.Joker{
    key = "JOKER_Witty_Joker",
    config = {
        extra = {
            chips = 25
        }
    },
    credit = {
    art = "Shrimp",
    code = "Shrimp",
    concept = "Shrimp",
    },
    pos = {
        x = 1,
        y = 7
    },
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    in_pool = function(self, args)
          return (
          not args 
            
          or args.source == 'sho' or args.source == 'buf' or args.source == 'jud' or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'uta' or args.source == 'wra'
          )
          and true
      end
    ,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if context.scoring_name == "High Card" then
                return {
                    chips = card.ability.extra.chips
                }
            end
        end
    end
}