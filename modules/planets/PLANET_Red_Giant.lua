SMODS.Consumable {
    key = 'PLANET_Red_Giant',
    set = 'Planet',
    pos = { x = 1, y = 0 },
    config = { extra = {
        hand_type = "Straight",
        hand_type = "Straight Flush"
    } },
    cost = 3,
    unlocked = true,
    discovered = true,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'Tarot',
    use = function(self, card, area, copier)
        local used_card = copier or card
            update_hand_text({ sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3 },
                { handname = localize('Straight', 'poker_hands'), 
                  chips = G.GAME.hands['Straight'].chips, 
                  mult = G.GAME.hands['Straight'].mult, 
                  level = G.GAME.hands['Straight'].level })
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.2,
                func = function()
                    play_sound('tarot1')
                    card:juice_up(0.8, 0.5)
                    G.TAROT_INTERRUPT_PULSE = true
                    return true
                end
            }))
            update_hand_text({ delay = 0 }, { mult = '+', StatusText = true })
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.9,
                func = function()
                    play_sound('tarot1')
                    card:juice_up(0.8, 0.5)
                    return true
                end
            }))
            update_hand_text({ delay = 0 }, { chips = '+', StatusText = true })
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.9,
                func = function()
                    play_sound('tarot1')
                    card:juice_up(0.8, 0.5)
                    G.TAROT_INTERRUPT_PULSE = nil
                    return true
                end
            }))
            update_hand_text({ sound = 'button', volume = 0.7, pitch = 0.9, delay = 0 }, { level = '+1' })
            delay(1.3)
            for i = 1, 1 do
                level_up_hand(card, 'Straight', true)
            end
            update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, 
                {handname=localize('Straight', 'poker_hands'), 
                 chips = G.GAME.hands['Straight'].chips, 
                 mult = G.GAME.hands['Straight'].mult, 
                 level=G.GAME.hands['Straight'].level})
            delay(1.3)
            update_hand_text({ sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3 },
                { handname = localize('Straight Flush', 'poker_hands'), 
                  chips = G.GAME.hands['Straight Flush'].chips, 
                  mult = G.GAME.hands['Straight Flush'].mult, 
                  level = G.GAME.hands['Straight Flush'].level })
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.2,
                func = function()
                    play_sound('tarot1')
                    card:juice_up(0.8, 0.5)
                    G.TAROT_INTERRUPT_PULSE = true
                    return true
                end
            }))
            update_hand_text({ delay = 0 }, { mult = '+', StatusText = true })
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.9,
                func = function()
                    play_sound('tarot1')
                    card:juice_up(0.8, 0.5)
                    return true
                end
            }))
            update_hand_text({ delay = 0 }, { chips = '+', StatusText = true })
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.9,
                func = function()
                    play_sound('tarot1')
                    card:juice_up(0.8, 0.5)
                    G.TAROT_INTERRUPT_PULSE = nil
                    return true
                end
            }))
            update_hand_text({ sound = 'button', volume = 0.7, pitch = 0.9, delay = 0 }, { level = '+1' })
            delay(1.3)
            for i = 1, 1 do
                level_up_hand(card, 'Straight Flush', true)
            end
            update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, 
                {handname=localize('Straight Flush', 'poker_hands'), 
                 chips = G.GAME.hands['Straight Flush'].chips, 
                 mult = G.GAME.hands['Straight Flush'].mult, 
                 level=G.GAME.hands['Straight Flush'].level})
            delay(1.3)
    end,
    can_use = function(self, card)
        return true
    end
}