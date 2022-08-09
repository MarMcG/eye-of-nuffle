# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "starting seed"
Player.delete_all
p "Deleted all Players"
Team.delete_all
p "Deleted all Teams"
Position.delete_all
p "Deleted all Positions"
Race.delete_all
p "Deleted all Races"

p "Creating Races..."
human = Race.create!(name: 'Human', special: 'Old World Classic', tier: 2, rerolls: 50000)
orc = Race.create!(name: "Orc", special: 'Badlands Brawl', tier: 2, rerolls: 60000)
dwarf = Race.create!(name: "Dwarf", special: "Old World Classic", tier: 1, rerolls: 50000)
prelf = Race.create!(name: "Elven Union", special: "Elven Kingdoms", tier: 2, rerolls: 50000)
undead = Race.create!(name: "Shambling Undead", special: "Sylvanian", tier: 1, rerolls: 70000)
goblin = Race.create!(name: "Goblin", special: "Bribery & Corruption", tier: 3, rerolls: 60000)
halfling = Race.create!(name: "Halfling", special: "Old world Classic", tier: 3, rerolls: 60000)
p "Finished creating Races "

p "Creating Positions..."
hum_line = Position.create!(race: human, name: "Human Line", quantity: 16, cost: 50000, ma: 6, st: 3, ag: "3+", pa: "4+", av: "9+", skills: "none", traits: "", primary: "G", secondary: "AS")
hum_throw = Position.create!(race: human, name: "Human Thrower", quantity: 2, cost: 80000, ma: 6, st: 3, ag: "3+", pa: "2+", av: "9+", skills: "Pass, Sure Hands", traits: "", primary: "GP", secondary: "AS")
hum_cat = Position.create!(race: human, name: "Human Catchers", quantity: 4, cost: 65000, ma: 8, st: 2, ag: "3+", pa: "5+", av: "8+", skills: "Catch, Dodge", traits: "", primary: "AG", secondary: "SP")
hum_blitz = Position.create!(race: human, name: "Human Blitzer", quantity: 4, cost: 85000, ma: 7, st: 3, ag: "3+", pa: "4+", av: "9+", skills: "Block", traits: "", primary: "GS", secondary: "AP")
hum_ha_ho = Position.create!(race: human, name: "Human Halfling Hopeful", quantity: 3, cost: 30000, ma: 5, st: 2, ag: "3+", pa: "4+", av: "7+", skills: "Dodge", traits: "Stunty, Right Stuff", primary: "A", secondary: "GS")
hum_ogre = Position.create!(race: human, name: "Human Ogre", quantity: 1, cost: 140000, ma: 5, st: 5, ag: "4+", pa: "5+", av: "10+", skills: "Mighty Blow, Thick Skull", traits: "Bone Head, Loner(4+), Throw Team-mate", primary: "S", secondary: "AG")
p "Human team positions created"

orc_line = Position.create!(race: orc, name: "Orc Line", quantity: 16, cost: 50000, ma: 5, st: 3, ag: "3+", pa: "4+", av: "10+", skills: "none", traits: "Animosity(Line)", primary: "G", secondary: "AS")
orc_throw = Position.create!(race: orc, name: "Orc Thrower", quantity: 2, cost: 65000, ma: 5, st: 3, ag: "3+", pa: "3+", av: "9+", skills: "Pass, Sure Hands", traits: "Animosity(All)", primary: "GP", secondary: "AS")
orc_blitz = Position.create!(race: orc, name: "Orc Blitzer", quantity: 4, cost: 80000, ma: 6, st: 3, ag: "3+", pa: "4+", av: "10+", skills: "Block", traits: "Animosity(All)", primary: "GS", secondary: "AP")
orc_bigun = Position.create!(race: orc, name: "Orc Big Un Blocker", quantity: 4, cost: 90000, ma: 5, st: 4, ag: "4+", pa: "-", av: "10+", skills: "None", traits: "Animosity(BuB)", primary: "GS", secondary: "A")
orc_gob = Position.create!(race: orc, name: "Orc Goblin", quantity: 4, cost: 40000, ma: 6, st: 2, ag: "3+", pa: "4+", av: "8+", skills: "Dodge", traits: "Right Stuff, Stunty", primary: "A", secondary: "GS")
orc_troll = Position.create!(race: orc, name: "Orc Untrained Troll", quantity: 1, cost: 115000, ma: 4, st: 5, ag: "5+", pa: "5+", av: "10+", skills: "Mighty Blow", traits: "Always Hungry, Loner(4+), Projectile Vomit, Really Stupid, Regeneration, Throw Team-mate", primary: "S", secondary: "AGP")
p "Orc team positions created"

dwa_line = Position.create!(race: dwarf, name: "Dwarf Line", quantity: 12, cost: 70000, ma: 4, st: 3, ag: "4+", pa: "5+", av: "10+", skills: "Block, Tackle, Thick Skull", traits: "", primary: "GS", secondary: "A")
dwa_run = Position.create!(race: dwarf, name: "Dwarf Runner", quantity: 2, cost: 85000, ma: 6, st: 3, ag: "3+", pa: "4+", av: "9+", skills: "Sure Hands, Thick Skull", traits: "", primary: "GP", secondary: "AS")
dwa_blitz = Position.create!(race: dwarf, name: "Dwarf Blitzer", quantity: 2, cost: 80000, ma: 5, st: 3, ag: "3+", pa: "4+", av: "10+", skills: "Block, Thick Skull", traits: "", primary: "GS", secondary: "AP")
dwa_slay = Position.create!(race: dwarf, name: "Dwarf Troll Slayer", quantity: 2, cost: 95000, ma: 5, st: 3, ag: "4+", pa: "-", av: "9+", skills: "Block, Dauntless, Frenzy, Thick Skull", traits: "", primary: "GS", secondary: "A")
dwa_roll = Position.create!(race: dwarf, name: "Dwarf Death Roller", quantity: 1, cost: 170000, ma: 4, st: 7, ag: "5+", pa: "-", av: "11+", skills: "Break Tackle, Dirty Player(2+), Juggernaut, Mighty Blow, Stand Firm", traits: "Loner(5+), No Hands, Secret Weapon", primary: "S", secondary: "AG")
p "Dwarf team positions created"

pr_elf_line = Position.create!(race: prelf, name: "Elven Union Line", quantity: 12, cost: 60000, ma: 6, st: 3, ag: "2+", pa: "4+", av: "8+", skills: "None", traits: "", primary: "AG", secondary: "S")
pr_elf_throw = Position.create!(race: prelf, name: "Elven Union Thrower", quantity: 2, cost: 75000, ma: 6, st: 3, ag: "2+", pa: "2+", av: "8+", skills: "Pass", traits: "", primary: "AGP", secondary: "S")
pr_elf_cat = Position.create!(race: prelf, name: "Elven Union Catcher", quantity: 4, cost: 100000, ma: 8, st: 3, ag: "2+", pa: "4+", av: "8+", skills: "Catch, Nerves of Steel", traits: "", primary: "AG", secondary: "S")
pr_elf_blitz = Position.create!(race: prelf, name: "Elven Union Blitzer", quantity: 2, cost: 115000, ma: 7, st: 3, ag: "2+", pa: "3+", av: "9+", skills: "Block, Side-Step", traits: "", primary: "AG", secondary: "PS")
p "Elven Union team positions created"

un_skel = Position.create!(race: undead, name: "Undead Skeleton Line", quantity: 12, cost: 40000, ma: 5, st: 3, ag: "4+", pa: "6+", av: "8+", skills: "Thick Skull", traits: "Regeneration", primary: "G", secondary: "AS")
un_zomb = Position.create!(race: undead, name: "Undead Zombie Line", quantity: 12, cost: 40000, ma: 4, st: 3, ag: "4+", pa: "-", av: "9+", skills: "None", traits: "Regeneration", primary: "G", secondary: "AS")
un_gho = Position.create!(race: undead, name: "Undead Ghoul Runner", quantity: 4, cost: 75000, ma: 7, st: 3, ag: "3+", pa: "4+", av: "8+", skills: "Dodge", traits: "", primary: "AG", secondary: "PS")
un_wig = Position.create!(race: undead, name: "Undead Wight Blitzer", quantity: 2, cost: 90000, ma: 6, st: 3, ag: "3+", pa: "5+", av: "9+", skills: "Block", traits: "Regeneration", primary: "GS", secondary: "AP")
un_mum = Position.create!(race: undead, name: "Undead Mummy", quantity: 2, cost: 125000, ma: 3, st: 5, ag: "5+", pa: "-", av: "10+", skills: "Mighty Blow", traits: "Regeneration", primary: "S", secondary: "AG")
p "Undead team positions created"

gob_line = Position.create!(race: goblin, name: "Goblin Line", quantity: 16, cost: 40000, ma: 6, st: 2, ag: "3+", pa: "4+", av: "8+", skills: "Dodge", traits: "Right Stuff, Stunty", primary: "A", secondary: "GPS")
gob_bom = Position.create!(race: goblin, name: "Goblin Bomma", quantity: 1, cost: 45000, ma: 6, st: 2, ag: "3+", pa: "4+", av: "8+", skills: "Dodge", traits: "Bombardier, Secret Weapon, Stunty", primary: "A", secondary: "GPS")
gob_loon = Position.create!(race: goblin, name: "Goblin Looney", quantity: 1, cost: 40000, ma: 6, st: 2, ag: "3+", pa: "-", av: "8+", skills: "None", traits: "Chainsaw, Secret Weapon, Stunty", primary: "A", secondary: "GS")
gob_fan = Position.create!(race: goblin, name: "Goblin Fanatic", quantity: 1, cost: 70000, ma: 3, st: 7, ag: "3+", pa: "-", av: "8+", skills: "None", traits: "Ball & Chain, No Hands, Secret Weapon, Stunty", primary: "S", secondary: "AG")
gob_pog = Position.create!(race: goblin, name: "Goblin Pogoer", quantity: 1, cost: 75000, ma: 7, st: 2, ag: "3+", pa: "5+", av: "8+", skills: "Dodge", traits: "Pogo Stick, Stunty", primary: "A", secondary: "GPS")
gob_ool = Position.create!(race: goblin, name: "Goblin 'Ooligan", quantity: 1, cost: 65000, ma: 6, st: 2, ag: "3+", pa: "6+", av: "8+", skills: "Dodge, Dirty Player, Disturbing Presence", traits: "Right Stuff, Stunty", primary: "A", secondary: "GPS")
gob_doom = Position.create!(race: goblin, name: "Goblin Doom Diver", quantity: 1, cost: 60000, ma: 6, st: 2, ag: "3+", pa: "6+", av: "8+", skills: "None", traits: "Right Stuff, Stunty, Swoop", primary: "A", secondary: "GS")
gob_troll = Position.create!(race: goblin, name: "Goblin Trained Troll", quantity: 2, cost: 115000, ma: 4, st: 5, ag: "5+", pa: "5+", av: "10+", skills: "Mighty Blow", traits: "Always Hungry, Loner(3+), Projectile Vomit, Really Stupid, Regeneration, Throw Team-mate", primary: "S", secondary: "AGP")
p "Goblin team positions created"

half_hop = Position.create!(race: halfling, name: "Halfling Hopeful", quantity: 16, cost: 30000, ma: 5, st: 2, ag: "3+", pa: "4+", av: "7+", skills: "Dodge", traits: "Right Stuff, Stunty", primary: "A", secondary: "GS")
half_hef = Position.create!(race: halfling, name: "Halfling Hefty", quantity: 2, cost: 50000, ma: 5, st: 2, ag: "3+", pa: "3+", av: "8+", skills: "Dodge, Fend", traits: "Stunty", primary: "AP", secondary: "GS")
half_cat = Position.create!(race: halfling, name: "Halfling Catcher", quantity: 2, cost: 55000, ma: 5, st: 2, ag: "3+", pa: "5+", av: "7+", skills: "Catch, Dodge, Sprint", traits: "Right Stuff, Stunty", primary: "A", secondary: "GS")
half_tree = Position.create!(race: halfling, name: "Halfling Altern Forest Treeman", quantity: 2, cost: 120000, ma: 2, st: 6, ag: "5+", pa: "5+", av: "11+", skills: "Mighty Blow, Stand Firm, Strong Arm, Thick Skull", traits: "Take Root, Throw Team-mate, Timmm-ber!", primary: "S", secondary: "AGP")
p "Halfling team positions created"

p "Finished creating Positions"

p "Seeding completed successfully"
