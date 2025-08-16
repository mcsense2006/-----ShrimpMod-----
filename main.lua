--------------------MOD CODE--------------------
--                      If you're the creator of one or another content you see in this mod and you don't want it there, contact me (@marxense) on discord
-----VERSION 1.0.1-----
-- Sprites
SMODS.Atlas {key = 'modicon',path = "icon.png",px = 32,py = 32}
SMODS.Atlas{key = 'Jokers',path = 'Jokers.png',px = 71,py = 95}
SMODS.Atlas {key = 'blind_chips',path = 'BlindChips.png',atlas_table = 'ANIMATION_ATLAS',frames = 21,px = 34,py = 34}
SMODS.Atlas{key = 'Tarot',path = 'Tarot.png',px = 65,py = 95}
SMODS.Atlas {key = 'Tags',path = 'Tags.png',px = 34,py = 34}
-- Custom colors
loc_colour('red') 
G.ARGS.LOC_COLOURS['Epic'] = HEX("01A6AF")
G.ARGS.LOC_COLOURS['Prime'] = HEX("F5CF86")
G.ARGS.LOC_COLOURS['Mahjong'] = HEX("4BC292")
G.ARGS.LOC_COLOURS['Ultrakill'] = HEX("8F0300")
--Epic rarity
SMODS.Rarity{
    key = 'epic',
    default_weight = 0.03,
    badge_colour = HEX("01A6AF"),
    get_weight = function(self, weight, object_type)
        return weight
    end,
    pools = {
        ["Jokers"] = true
    },
}
--Prime soul rarity
SMODS.Rarity{
    key = 'prime',
    default_weight = 0,
    badge_colour = HEX("F5CF86"),
    get_weight = function(self, weight, object_type)
        return weight
    end,
}
--Links
function G.FUNCS.joy_discord(e)
    love.system.openURL("https://discord.gg/WakQxQmdC5")
end
function G.FUNCS.joy_youtube(e)
    love.system.openURL("https://youtube.com/")                     --No Youtube atm, need to make like a intro to mod video or sm
end
--links tab and credits tab
SMODS.current_mod.extra_tabs = function()
    local scale = 0.5
    return {
        -- Our Links tab borrowed from the terraria x balatro mod
        {
            label = "Our Links",
            tab_definition_function = function()
                return {
                    n = G.UIT.ROOT,
                    config = {
                        align = "cm",
                        padding = 0.05,
                        colour = G.C.CLEAR,
                    },
                    nodes = {
                        {
                            n = G.UIT.R,
                            config = { padding = 0.2, align = "cm" },
                            nodes = {
                                {
                                    n = G.UIT.C,
                                    config = { padding = 0.2, align = "cm" },
                                    nodes = {
                                        UIBox_button({
                                            colour = G.C.BLUE,
                                            minw = 3.85,
                                            button = "joy_discord",
                                            label = { "Join our Discord" }
                                        })
                                    }
                                },
                                {
                                    n = G.UIT.C,
                                    config = { padding = 0.2, align = "cm" },
                                    nodes = {
                                        UIBox_button({
                                            colour = G.C.RED,
                                            minw = 3.85,
                                            button = "joy_youtube",
                                            label = { "Watch our YouTube" }
                                        })
                                    }
                                }
                            }
                        }
                    }
                }
            end
        },
        -- Credits
        {
            label = "Credits",
            tab_definition_function = function()
                return {
                    n = G.UIT.ROOT,
                    config = {
                        align = "cm",
                        padding = 0.05,
                        colour = G.C.CLEAR,
                    },
                    nodes = {
                        {
                            n = G.UIT.R,
                            config = {padding = 0, align = "cm"},
                            nodes = {
                                {
                                    n = G.UIT.T,
                                    config = {
                                        text = "Project Lead: The Shrimp",
                                        shadow = false,
                                        scale = scale,
                                        colour = G.C.PURPLE
                                    }
                                }
                            }
                        },
                        {
                            n = G.UIT.R,
                            config = {padding = 0, align = "cm"},
                            nodes = {
                                {
                                    n = G.UIT.T,
                                    config = {
                                        text = "Artists: The Shrimp, theCater_, @Steam_Master0",
                                        shadow = false,
                                        scale = scale,
                                        colour = G.C.MONEY
                                    }
                                }
                            }
                        },
                        {
                            n = G.UIT.R,
                            config = {padding = 0, align = "cm"},
                            nodes = {
                                {
                                    n = G.UIT.T,
                                    config = {
                                        text = "Programmers: The Shrimp, sushii64",
                                        shadow = false,
                                        scale = scale,
                                        colour = G.C.GREEN
                                    }
                                }
                            }
                        },
                        {
                            n = G.UIT.R,
                            config = {padding = 0, align = "cm"},
                            nodes = {
                                {
                                    n = G.UIT.T,
                                    config = {
                                        text = "Concepting: Credit for each additions are put on them, planet inspired by u/Cuddly_Corvid",
                                        shadow = false,
                                        scale = scale * 0.6,
                                        colour = G.C.BLACK
                                    }
                                }
                            }
                        }
                    }
                }
            end
        }
    }
end
----------------------------------------------------------------------------------------------------------------------
--Load common jokers
assert(SMODS.load_file("./modules/jokers/JOKER_Glitched_Joker.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_No_Face,_No_Case.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Two_Way_Mirror.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Claustrophobic.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Halleys_Comet.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Drunk_Vision.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Paper_Shredder.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Landslide.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Frieren.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Gay_Joker.lua"))()
--assert(SMODS.load_file("./modules/jokers/JOKER_Feast_Or_Famine.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Clairvoyance.lua"))()
--Load uncommon jokers
assert(SMODS.load_file("./modules/jokers/JOKER_Oops_all_1s.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Jonkler.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Joker_Achromatope.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Colorblind_Joker.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Room_Temperature.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Soul_Keeper.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Predictable_Joker.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Perkeolator.lua"))()
--assert(SMODS.load_file("./modules/jokers/JOKER_Rinshan.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Red_Dora.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Little_Dragons.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Big_Dragons.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Common_Ends.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Broken_Limbs.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Static_Clown.lua"))()
--Load rare jokers
assert(SMODS.load_file("./modules/jokers/JOKER_Fern.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Dark_Matter.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Soul_of_the_Galaxy.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Spiritist.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Spirit_Infusion.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Chudjoker.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Steak.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Movie_Time.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Four_Concealed_Triplets.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_All_Terminals.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_All_Honors.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_All_Green.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Appetizer.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Package.lua"))()
--Load epic jokers
--assert(SMODS.load_file("./modules/jokers/JOKER_Canva.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_The_Big_Shot.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Morshu.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Flesh_Prison.lua"))()
--assert(SMODS.load_file("./modules/jokers/JOKER_Flesh_Panopticon.lua"))()
--Load prime jokers
assert(SMODS.load_file("./modules/jokers/JOKER_Minos_Prime.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_Sisyphus_Prime.lua"))()
--Load legendary jokers
assert(SMODS.load_file("./modules/jokers/JOKER_L_Shrimp.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_L_Caterpillar.lua"))()
assert(SMODS.load_file("./modules/jokers/JOKER_L_Pangoreuil.lua"))()
----------------------------------------------------------------------------------------------------------------------
--Load Blinds
assert(SMODS.load_file("./modules/blinds/BLIND_The_Rune.lua"))()
----------------------------------------------------------------------------------------------------------------------
--Load Vouchers
--assert(SMODS.load_file("./modules/vouchers/VOUCH_Hoarder_T1.lua"))()
----------------------------------------------------------------------------------------------------------------------
--Load Planets
assert(SMODS.load_file("./modules/planets/PLANET_Red_Giant.lua"))()
assert(SMODS.load_file("./modules/planets/PLANET_Neutron.lua"))()
assert(SMODS.load_file("./modules/planets/PLANET_Main_Sequence.lua"))()
assert(SMODS.load_file("./modules/planets/PLANET_White_Dwarf.lua"))()
assert(SMODS.load_file("./modules/planets/PLANET_Pulsar.lua"))()
assert(SMODS.load_file("./modules/planets/PLANET_Protostar.lua"))()
assert(SMODS.load_file("./modules/planets/PLANET_Brown_Dwarf.lua"))()
----------------------------------------------------------------------------------------------------------------------
--Load Tags
--assert(SMODS.load_file("./modules/tags/TAG_Epic.lua"))()
----------------------------------------------------------------------------------------------------------------------