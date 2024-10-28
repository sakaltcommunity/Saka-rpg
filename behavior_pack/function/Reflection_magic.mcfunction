/tag @a[hasitem={item=nether_star,location=slot.weapon.mainhand,data=1234,quantity=1}] add hold_item_1
/replaceitem entity @a[hasitem={item=nether_star,location=slot.weapon.mainhand,data=1234,quantity=1}] slot.weapon.mainhand 0 fishing_rod 1 1234
/tag @a add not_hold_rod_1
/tag @a[hasitem={item=fishing_rod,location=slot.weapon.mainhand}] remove not_hold_rod_1
/execute as @a[tag=not_hold_rod_1,tag=hold_item_1] at @s run structure load Runetracer ~~~
/execute as @a[tag=not_hold_rod_1,tag=hold_item_1] at @s run tp @e[type=item,name=Runetracer,c=1] ~~~
/clear @a[tag=not_hold_rod_1,tag=hold_item_1] fishing_rod 1234 1
/tag @a[tag=not_hold_rod_1,tag=hold_item_1] remove hold_item_1

/tag @e add entity
/execute as @e[type=fishing_hook] at @s positioned ~~-1.5~ as @p if entity @s[tag=hold_item_1] at @s run summon boat ~~10001.5~
/execute as @e[type=fishing_hook] at @s positioned ~~-1.5~ as @p if entity @s[tag=hold_item_1] at @s run tag @e[type=boat,y=~10000,c=1] add Runetracer_boat
/execute as @e[type=fishing_hook] at @s positioned ~~-1.5~ as @p if entity @s[tag=hold_item_1] at @s run playsound firework.launch @a ~~~ 
/execute as @e[type=fishing_hook] at @s positioned ~~-1.5~ as @p if entity @s[tag=hold_item_1] run kill @e[c=1,type=fishing_hook]
/execute as @e[tag=!entity] at @s rotated as @p[tag=hold_item_1,y=~-10000] run tp @s ~~~

/scoreboard objectives add Rune_time dummy
/scoreboard players add @e[tag=Runetracer_boat] Rune_time 1
/kill @e[tag=Runetracer_boat,scores={Rune_time=200}]

/execute as @e[type=item,name=釣り竿,tag=!turizao] at @s positioned ~~-1.5~ as @p if entity @s[tag=hold_item_1] run kill @e[c=1,type=item]
/tag @e[type=item,name=釣り竿] add turizao




/execute as @e[tag=Runetracer_boat] at @s run tp @s ^^^0.15
/execute as @e[tag=Runetracer_boat] at @s run particle minecraft:balloon_gas_particle ~~-10000~
/execute as @e[tag=Runetracer_boat] at @s positioned ~~-10000~ run damage @e[r=0.7,type=!player] 1 suicide
/execute as @e[tag=Runetracer_boat] at @s positioned ~~-10000~ run damage @e[y=~-1,r=0.7,type=!player] 1 suicide

/execute as @e[tag=Runetracer_boat] at @s unless blocks ~~-10000~0.1~~-10000~-0.1 7622523 153 -6232351 all positioned ~~-10000~ unless block ^^^0.5 air 0 positioned ~~10000~ positioned ^^^1 positioned ~~~10000 facing entity @s feet positioned ^^^20000 positioned ~~~10000 facing entity @s feet positioned as @s run tag @s add hansya_sita

/execute as @e[tag=Runetracer_boat] at @s unless blocks ~0.1~-10000~~-0.1~-10000~ 7622523 153 -6232351 all positioned ~~-10000~ unless block ^^^0.5 air 0 positioned ~~10000~ positioned ^^^1 positioned ~10000~~ facing entity @s feet positioned ^^^20000 positioned ~10000~~ facing entity @s feet positioned as @s run tag @s add hansya_sita

/execute as @e[tag=Runetracer_boat] at @s unless blocks ~~-10000.5~~~-9999.5~ 7622523 153 -6232351 all positioned ~~-10000~ unless block ^^^0.5 air 0 positioned ~~10000~ positioned ^^^1 positioned ~~10000~ facing entity @s feet positioned ^^^20000 positioned ~~10000~ facing entity @s feet positioned as @s run tag @s add hansya_sita


/execute as @e[tag=Runetracer_boat] at @s unless blocks ~~-10000~0.1~~-10000~-0.1 7622523 153 -6232351 all positioned ~~-10000~ unless block ^^^0.5 air 0 positioned ~~10000~ positioned ^^^1 positioned ~~~10000 facing entity @s feet positioned ^^^20000 positioned ~~~10000 facing entity @s feet positioned as @s run tp @s ~~~~~

/execute as @e[tag=Runetracer_boat] at @s unless blocks ~0.1~-10000~~-0.1~-10000~ 7622523 153 -6232351 all positioned ~~-10000~ unless block ^^^0.5 air 0 positioned ~~10000~ positioned ^^^1 positioned ~10000~~ facing entity @s feet positioned ^^^20000 positioned ~10000~~ facing entity @s feet positioned as @s run tp @s ~~~~~

/execute as @e[tag=Runetracer_boat] at @s unless blocks ~~-10000.5~~~-9999.5~ 7622523 153 -6232351 all positioned ~~-10000~ unless block ^^^0.5 air 0 positioned ~~10000~ positioned ^^^1 positioned ~~10000~ facing entity @s feet positioned ^^^20000 positioned ~~10000~ facing entity @s feet positioned as @s run tp @s ~~~~~

/execute as @e[tag=hansya_sita] at @s run particle minecraft:large_explosion ~~-10000~
/execute as @e[tag=hansya_sita] at @s positioned ~~-10000~ run playsound block.bell.hit @a ~~~ 0.5 5
/tag @e remove hansya_sita
