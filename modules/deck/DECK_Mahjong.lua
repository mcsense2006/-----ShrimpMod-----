SMODS.Back {
    key = "DECK_Mahjong",
    pos = { x = 0, y = 0 },
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                if not G.playing_cards then return false end
                for i, suit in ipairs({'Pin', 'Sou', 'Man', 'Winds', 'Dragons'}) do
                    for i, rank in ipairs(SMODS.Rank.obj_buffer) do
                        SMODS.add_card({set = "Base", rank = rank, suit = suit, area = G.deck})
                    end
                end
				SMODS.change_play_limit(8)
				SMODS.change_discard_limit(8)
				return true
            end
        }))
    end
}