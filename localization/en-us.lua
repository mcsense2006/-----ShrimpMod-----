return {
    descriptions = {
        Back={},
        Blind={
            bl_shrimp_BLIND_The_Rune = {
                name = 'The Rune',
                text = {
                    'All cards debuffed until',
                    'a consumable is used or sold',
                }
            }
        },
        Edition={},
        Enhanced={},
        Joker={
            j_shrimp_JOKER_PlaceHolder = {
                name = 'PlaceHolder',
                text = {
                    'Placeholder, 1st row',
                    'Placeholder, 2nd row',
                    'Placeholder, 3rd row',
                }
            },
            j_shrimp_JOKER_Package = {
                name = 'Package',
                text = {
                    'Grants 2 {C:attention}Joker slots',
                    '{C:red}destroys{} itself after 3 rounds',
                }
            },
            j_shrimp_JOKER_Clairvoyance = {
                name = 'Clairvoyance',
                text = {
                    'Defeating a boss blind creates',
                    'an {C:attention}Charm tag{}'
                }
            },
            j_shrimp_JOKER_Broken_Limbs = {
                name = 'Broken Limbs',
                text = {
                    'Gains {X:mult,C:white}X0.5{} Mult per hand used this round',
                    '{C:inactive}(Resets every round)',
                    '{C:inactive}(Currently{X:mult,C:white} X#1#{} {C:inactive}Mult){}',
                }
            },
            j_shrimp_JOKER_Flesh_Panopticon = {
                name = 'Flesh Panopticon',
                text = {
                    'Gains {X:chips,C:white}Xn{} chips when a {C:attention}boss{} is defeated',
                    '(Where n is a 10th of the money you hold when it triggers)',
                    '{C:inactive}(Currently {}{C:white,X:chips}X#1#{} {C:inactive}chips){}',
                    ' ',
                    '{E:2,s:0.85}If you use 10 consumables this run, sell this',
                    '{E:2,s:0.85}card to summon {C:Prime}Sisyphus Prime{}',
                    '{C:inactive}[#2#]{}',
                }
            },
            j_shrimp_JOKER_Sisyphus_Prime = {
                name = 'Sisyphus Prime',
                text = {
                    'First scoring card retriggers 8 times',
                    'Gains X0.25 mult per hand played',
                    '{C:inactive}(Currently {C:white,X:mult}X#1#{}{C:inactive} mult){}',
                }
            },
            j_shrimp_JOKER_Minos_Prime = {
                name = 'Minos Prime',
                text = {
                    'Retrigers all playing cards twice,',
                    'Gains {X:mult,C:white}X0.5{} mult per boss blind defeated',
                    '{C:inactive}(Currently {C:white,X:mult}X#1#{}{C:inactive} mult){}',
                }
            },
            j_shrimp_JOKER_Flesh_Prison = {
                name = 'Flesh Prison',
                text = {
                    '{X:mult,C:white}X1.5{} for each card if',
                    'played hand is a {C:attention}flush{}.',
                    ' ',
                    '{E:2,s:0.85}If you defeat 3 boss blinds in 1 hand each,',
                    '{E:2,s:0.85}sell this card to summon {C:Prime}Minos Prime{}',
                    '{C:inactive}[#1#]{}',
                }
            },
            j_shrimp_JOKER_Big_Dragons = {
                name = 'Big Dragons',
                text = {
                    '{X:mult,C:white}X3{} mult is played hand contains at least 3 {C:attention}stone{}/{C:attention}steel{}/{C:attention}gold{} cards',
                }
            },
            j_shrimp_JOKER_Common_Ends = {
                name = 'Common Ends',
                text = {
                    'This joker gains {C:mult}+2{} mult for each {C:attention}ace{} or {C:attention}face cards{} played',
                    '{C:inactive}(Currently {}{C:mult}+#1#{}{C:inactive} Mult){}',
                }
            },
            j_shrimp_JOKER_All_Honors = {
                name = 'All Honors',
                text = {
                    'Gains {X:mult,C:white}X0.15{} mult each time a card',
                    'with an {C:attention}enhancement{}',
                    'is scored.',
                    '{C:inactive}(resets if scored card not enhanced){}',
                    '{C:inactive}(currently {}{C:white,X:mult}X#1#{} {C:inactive}){}'
                }
            },
            j_shrimp_JOKER_All_Green = {
                name = 'All Green',
                text = {
                    'gains {C:white,X:mult}X1{} mult per {C:clubs}club{} {C:attention}flush{} played',
                    '{C:inactive}(currently{}{C:white,X:mult} X#1#{C:inactive}){}',
                }
            },
            j_shrimp_JOKER_Four_Concealed_Triplets = {
                name = 'Four Concealed Triplets',
                text = {
                    '{C:white,X:mult}X4{} mult each time 4 {C:attention}three of a kind{} is played',
                    '(resets on discard)',
                    '{C:inactive}[#1#]{}',
                }
            },
            j_shrimp_JOKER_All_Terminals = { --modify code to message the upgrade
                name = 'All Terminals',
                text = {
                    'gains {C:white,X:mult}X0.2{} mult each time a {C:attention}face{} or {C:attention}ace{} card is scored',
                    '{C:inactive}(currently {}{C:white,X:mult}X#1#{} {C:inactive}mult){}'
                }
            },
            j_shrimp_JOKER_Gay_Joker = {
                name = 'Gay Joker',
                text = {
                    'Lose instantly if played hand contains a {C:attention}straight{}',
                }
            },
            j_shrimp_JOKER_Movie_Time = {
                name = 'Movie Time',
                text = {
                    'Creates 5 {C:attention}popcorn{} when sold',
                    '{C:inactive}Acording to the current joker slots{}',
                }
            },
            j_shrimp_JOKER_Little_Dragons = {
                name = 'Little Dragons',
                text = {
                    'gains {C:mult}+5{} mult is played hand contains',
                    'at least 2 {C:attention}stone{}/{C:attention}steel{}/{C:attention}gold{} cards',
                    '{C:inactive}(Currently {C:mult}+#1#{} {C:inactive}mult){}'

                }
            },
            j_shrimp_JOKER_Red_Dora = { --modify code to message the upgrade
                name = 'Red Dora',
                text = {
                    'This joker gains {C:mult}+4{}',
                    'mult for each {C:diamonds}diamonds{} or {C:hearts}hearts{}',
                    '5 played',
                    '{C:inactive}(currently {}{C:mult}+#1#{}{C:inactive} mult){}',
                }
            },
            j_shrimp_JOKER_Rinshan = {
                name = 'Rinshan',
                text = {
                    'Draw {C:attention}2{} extra',
                    'cards next hand if the',
                    'hand played is a',
                    '{C:attention}four of a kind{}',
                    '{C:inactive}[#1#]{}',
                }
            },
            j_shrimp_JOKER_Steak = {
                name = 'Steak',
                text = {'when {C:attention}medium{} is used',
                    'creates a random rare joker',
                }
            },
            j_shrimp_JOKER_Chudjoker = {
                name = 'Chudjoker',
                text = {
                    'All listed {C:green,E:1}probabilities{} are set to',
                    '{C:green}0 in N{}',
                    ' ',
                    '{C:inactive,E:1,s:0.85}Nothing ever happens'
                }
            },
            j_shrimp_JOKER_Perkeolator = {
                name = 'Perkeolator',
                text = {
                    '{C:green}1 in 2{} chance of',
                    'creating a negative copy of a',
                    'random {C:attention}consumable{} in your possession',
                    'at the end of {C:attention}shop{}',
                    'destroys itself at the 5th trigger',
                }
            },
            j_shrimp_JOKER_Morshu = {
                name = 'Morshu',
                text = {
                    '{C:green}1 in 2{} chance of creating',
                    '5 random negative {C:attention}consumables{}',
                    'at the end of the shop,',
                    'steals {C:money}5${} from you',
                    ' ',
                    '{C:inactive,E:1,s:0.85}Jokers, Booster Packs, Vouchers, You want them ?',
                    '{C:inactive,E:1,s:0.85}It\'s yours my friend as long as you have enough money',
                }
            },
            j_shrimp_JOKER_Predictable_Joker = {
                name = 'Predictable Joker',
                text = {
                    'Each {C:attention}Lucky cards{} held in',
                    'hand grants {C:mult}+4{} mult and {C:money}1$',
                }
            },
            j_shrimp_JOKER_Spirit_Infusion = {
                name = 'Spirit Infusion',
                text = {
                    'Create {C:attention}2{} negative',
                    '{C:spectral}spectral{} {C:attention}cards{} after a',
                    '{C:attention}blind{} is selected but',
                    'makes them {C:attention}3{} times bigger',
                }
            },
            j_shrimp_JOKER_Soul_Keeper = {
                name = 'Soul Keeper',
                text = {
                    'This {C:attention}Joker{} gains {C:white,X:mult}X0.5',
                    'mult per {C:spectral}spectral{} {C:attention}card',
                    'used',
                    '{C:inactive}(Currently{} {C:white,X:mult}X#1#{}{C:inactive} mult){}',
                }
            },
            j_shrimp_JOKER_Canva = {
                name = 'Canva',
                text = {
                    'Copies the ability of the {C:attention}Joker{}',
                    'to the left and to the right', --doesn't work
                }
            },
            j_shrimp_JOKER_Spiritist = {
                name = 'Spiritist',
                text = {
                    'Gives an {C:attention}Ethereal Tag{}',
                    'at the end of the round',
                }
            },
            j_shrimp_JOKER_Soul_of_the_Galaxy = {
                name = 'Soul of the Galaxy',
                text = {
                    'Creates a {C:spectral}spectral{} {C:attention}card{}',
                    'each time 5 {C:planet}planets{}',
                    '{C:attention}cards{} are used',
                    '{C:inactive}Currently [#1#]'
                }
            },
            j_shrimp_JOKER_Room_Temperature = {
                name = 'Room Temperature',
                text = {
                    'Gain {C:white,X:mult}X0.5{} mult per every',
                    '{C:attention}Joker{} slot filled',
                    '{C:inactive}(Currently {C:white,X:mult}X#1#{}{C:inactive}){}',
                }
            },
            j_shrimp_JOKER_Frieren ={
                name = 'Frieren',
                text = {
                    'All {C:attention}scored 7{} and {C:attention}A',
                    'become {C:attention}lucky cards{}',
                    ' ',
                    '{C:inactive,E:1,s:0.85}Oh look, a chest!{}'
                }
            },
            j_shrimp_JOKER_Landslide = {
                name = 'Landslide',
                text = {
                    'When {C:attention}blind{} is defeated',
                    'with no {C:attention}hands{} left, add',
                    '{C:attention}2 hands{} next round',
                    ' ',
                    '{C:inactive,E:1,s:0.85}Good morning, world!{}'
                }
            },
            j_shrimp_JOKER_Two_Way_Mirror = {
                name = 'Two-Way Mirror',
                text = {
                    '{C:attention}Glass cards{} gives {C:white,X:mult}X1.75{}',
                    'mult when held in hand',
                    ' ',
                    '{C:inactive,E:1,s:0.85}I see you{}',
                }
            },
            j_shrimp_JOKER_Oops_all_1s = {
                name = 'Oops! All 1s',
                text = {
                    'Halves all listed',
                    '{C:green,E:1}probabilities{}',
                    '{C:inactive}(ex: {}{C:green}1 in 3 {C:inactive}->{} {C:green}1 in 6{}{C:inactive}){}',
                    '{C:inactive}(will be noted as {C:green}0.5 in 3{} {C:inactive}though){}',
                    ' ',
                    '{C:inactive,E:1,s:0.85}I am the evil Black-Jack dealer{}',
                }
            },
            j_shrimp_JOKER_Static_Clown = {
                name = 'Static Clown',
                text = {
                    'Everytime a card with an',
                    'edition or enchantment is scored,',
                    'there is a {C:green}1 in 3{} chance of coping',
                    'the card to your hand',
                    ' ',
                    '{C:inactive,E:1,s:0.85}It is just noice... or is it?{}',
                }
            },
            j_shrimp_JOKER_Glitched_Joker = {
                name = 'Glitched Joker',
                text = {
                    '{C:mult}+15{} Mult if your hand contain no pairs',
                    ' ',
                    '{C:inactive,E:1,s:0.85}Did not mean to play that, did you?{}',
                }
            },
            j_shrimp_JOKER_Jonkler = {
                name = 'Jonkler',
                text = {
                    'When any {C:attention}listed {C:green}probability{}',
                    '{C:attention}misses{}, gain {X:mult,C:white}X#1#{} Mult,',
                    'excluding {C:attention}playing cards{}',
                    '{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult){}',
                    ' ',
                    '{C:inactive,E:1,s:0.85}Anything that can go wrong...{}',
                }
            },
            j_shrimp_JOKER_No_Face_No_Case = {
                name = 'No Face, No Case',
                text = {
                    'Played {C:attention}non-face{}',
                    'cards give {C:mult}+#1#{} Mult',
                    'when scored',
                    ' ',
                    '{C:inactive,E:1,s:0.85}Face cards do not count,{}',
                    '{C:inactive,E:1,s:0.85}but they pretend they do.{}',

                }
            },
            j_shrimp_JOKER_Fern = {
                name = 'Fern',
                text = {
                    'If played {C:attention}poker hand{} is',
                    'a {C:attention}#3#{}, debuffs it and',
                    'gain {X:chips,C:white}X1{} Chips. Changes at end of round',
                    '{C:inactive}(Currently {X:chips,C:white}X#2#{C:inactive} Chips){}',
                    ' ',
                    '{C:inactive,E:1,s:0.85}That\'s a mimic!{}'                    
                }
            },
            j_shrimp_JOKER_Joker_Achromatope = {
                name = 'Joker Achromatope',
                text = {
                    'Gains {C:chips}+#1#{} Chips for',
                    'every unique suit',
                    'in played hand',
                    '{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips){}',
                    ' ',
                    '{C:inactive,E:1,s:0.85}I see no difference.{}'
                }
            },
            j_shrimp_JOKER_L_Shrimp = {
                name = 'Shrimp',
                text = {
                    'Gains {C:dark_edition,X:mult}^#1#{} Mult every',
                    'time you play your',
                    'least played {C:attention}poker hand{}',
                    '{C:inactive}(Currently {C:dark_edition,X:mult}^#2#{C:inactive} Mult){}',
                    ' ',
                    '{C:inactive,E:1,s:0.85}Wow, I\'m in the game!{}',
                },
            },
            j_shrimp_JOKER_L_Caterpillar = {
                name = 'Caterpillar',
                text = {
                    '{X:chips,C:white}X2{} chips when most {C:attention}played hand{} is',
                    'played, then {C:dark_edition}balances{} chips and mult',
                    ' ',
                    '{C:inactive,E:1,s:0.85} I am a silly goofer{}',
                },
            },
            j_shrimp_JOKER_Leshy = {
                name = 'Leshy',
                text = {
                    '{C:clubs}Clubs{} give',
                    '{C:dark_edition,X:mult}^1.5{} Mult when scored',
                    ' ',
                    '{C:inactive,E:1,s:0.85}See no evil'
                }
            },
            j_shrimp_JOKER_Heket = {
                name = 'Heket',
                text = {
                    '{C:diamonds}Diamonds{} give',
                    '{C:dark_edition,X:mult}^1.5{} Mult when scored',
                    ' ',
                    '{C:inactive,E:1,s:0.85}Speak no evil'
                }
            },
            j_shrimp_JOKER_Kallamar = {
                name = 'Kallamar',
                text = {
                    '{C:spades}Spades{} give',
                    '{C:dark_edition,X:mult}^1.5{} Mult when scored',
                    ' ',
                    '{C:inactive,E:1,s:0.85}Hear no evil'
                }
            },
            j_shrimp_JOKER_Sharmura = {
                name = 'Sharmura',
                text = {
                    '{C:hearts}Hearts{} give',
                    '{C:dark_edition,X:mult}^1.5{} Mult when scored',
                    ' ',
                    '{C:inactive,E:1,s:0.85}Think no evil',
                }
            },
            j_shrimp_JOKER_Dark_Matter = {
                name = 'Dark Matter',
                text = {
                    'Gain {C:white,X:mult}X1{} Mult for each',
                    '{C:dark_edition}Negative{} {C:attention}Joker{}',
                    '{C:inactive}(Currently {C:white,X:mult}X#1#{} {C:inactive}Mult){}',
                    ' ',
                    '{C:inactive,E:1,s:0.85}It\'s dark in here{}',
                }
            },
            j_shrimp_JOKER_Sunk_Cost_Fallacy = {
                name = 'Sunk-Cost Fallacy',
                text = {
                    'This {C:attention}Joker{} gains {C:white,X:mult}X0.25',
                    'Mult per every {C:money}$1{} bellow {C:money}$0{}',
                    '{C:inactive}(Currently {C:white,X:mult}X1{} {C:inactive}Mult){}',
                    ' ',
                    '{C:inactive,E:1,s:0.85}Not{} {C:mult,E:1,s:0.85}+4{}{C:inactive,E:1,s:0.85}:(',
                }
            },
            j_shrimp_JOKER_Claustrophobic = {
                name = 'Claustrophobic',
                text = {
                    'Gain {C:money}1${} per every {C:attention}card{}',
                    'above 52 at the start of the shop',
                    ' ',
                    '{C:inactive,E:1,s:0.85}I need way more space{}',
                }
            },
            j_shrimp_JOKER_Halleys_Comet = {
                name = 'Halley\'s Comet',
                text = {
                    'Fill your consumable',
                    'slots with {C:planet}planet{} {C:attention}cards{}',
                    'when blind in defeated',
                    'in one hand',
                    ' ',
                    '{C:inactive,E:1,s:0.85}*passes by*{}',
                }
            },
            j_shrimp_JOKER_Drunk_Vision = {
                name = 'Drunk Vision',
                text = {
                    'Ranks {C:attention}9{} and {C:attention}6{}, {C:attention}A{} and {C:attention}2{}',
                    'are concidered the',
                    'same',
                    ' ',
                    '{C:inactive,E:1,s:0.85}hips{}',
                }
            },
            j_shrimp_JOKER_Paper_Shredder = {
                name = 'Paper Shredder',
                text = {
                    'you can {C:red}discard{} everything'
                }
            },
            j_shrimp_JOKER_Feast_Or_Famine = {
                name = 'Feast or Famine',
                text = {
                    'Gain {X:mult,C:white}X3{} mult when',
                    'spending {C:money}25${} in a single',
                    '{C:green}shop{}',
                    '{C:inactive}(resets every ante){}',
                    '{C:inactive}(currently spent #1#$){}'
                }
            },
            j_shrimp_JOKER_Colorblind_Joker = {
                name = 'Colorblind Joker',
                text = {
                    '{C:hearts}Hearts{} and {C:spades}Spades{} count as',
                    'the same suit, {C:diamonds}Diamonds{} and',
                    '{C:clubs}Clubs{} count as the same suit',
                    ' ',
                    '{C:inactive,E:1,s:0.85}Same{}',
                }
            },
            j_shrimp_JOKER_L_Pangoreuil = {
                name = 'Pangoreuil',
                text = {
                    'Creates 15 negatives {C:attention}Wheel of fortune{}',
                    'when this card is {C:attention}sold{}',
                    ' ',
                    '{C:inactive,E:1,s:0.85}Let\' go gambling{}'
                }
            },
        },
        Other={},
        Planet={
            c_shrimp_PLANET_Red_Giant = {
                name = 'Red Giant',
                text = {
                    'Level up all poker hands',
                    'that contains a {C:attention}straight{}',
                }
            },
            c_shrimp_PLANET_Main_Sequence = {
                name = 'Main Sequence',
                text = {
                    'Level up all poker hands',
                    'that contains a {C:attention}flush{}',
                }
            },
            c_shrimp_PLANET_White_Dwarf = {
                name = 'White Dwarf',
                text = {
                    'Level up all poker hands',
                    'that contains a {C:attention}two pairs{}',
                }
            },
            c_shrimp_PLANET_Neutron = {
                name = 'Neutron',
                text = {
                    'Level up all poker hands',
                    'that contains a {C:attention}four of a kind{}',
                }
            },
            c_shrimp_PLANET_Pulsar = {
                name = 'Pulsar',
                text = {
                    'Level up all poker hands',
                    'that contains a {C:attention}secret hand{}',
                }
            },
            c_shrimp_PLANET_Protostar = {
                name = 'Protostar',
                text = {
                    'Level up all poker hands',
                    'that contains {C:attention}5 cards{}',
                }
            },
            c_shrimp_PLANET_Brown_Dwarf = {
                name = 'Brown Dwarf',
                text = {
                    'Level up all poker hands',
                    'that contains {C:attention}3 or less cards{}',
                }
            },
        },
        Spectral={},
        Stake={},
        Tag={
            tag_shrimp_TAG_Epic = {
                name = 'Epic Tag',
                text = {
                    'Shop has a free',
                    '{C:Epic}Epic Joker{}',
                }
            },
        },
        Tarot={},
        Voucher={
            v_shrimp_VOUCH_Hoarder_T1 = {
                name = 'Hoarder T1',
                text = {
                    'All {C:green}shops{} have one',
                    'extra booster {C:attention}pack{}',
                }
            },
        },
    },
    misc = {
        achievement_descriptions={},
        achievement_names={},
        blind_states={},
        challenge_names={},
        collabs={},
        dictionary={
            k_shrimp_epic = 'Epic',
            k_shrimp_prime = 'Prime Soul',
        },
        high_scores={},
        labels={},
        poker_hand_descriptions={},
        poker_hands={},
        quips={},
        ranks={},
        suits_plural={},
        suits_singular={},
        tutorial={},
        v_dictionary={
            a_emult = "^#1# Mult",
        },
        v_text={},
    },
}
