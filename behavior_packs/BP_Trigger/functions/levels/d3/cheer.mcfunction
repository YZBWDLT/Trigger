setblock -21 25 -7 concrete_powder ["color"="green"] destroy

#播放0.5*升级的音效
    #播放延迟时间
    scoreboard players set soundPlayer time 5

    #播放选定的音效
    scoreboard players set soundPlayer active 16

tellraw @a {"rawtext": [{"text":"[D类型]已通过！"}]}
title @a title D类型
title @a subtitle -已通过-