#检测关卡的通关条件
execute if block -50 23 92 cauldron ["fill_level"=6] run function levels/c_3/complete

clear @a[scores={class=3,grade=3}] minecraft:glass_bottle

#检测解锁idea3的通关条件
#如果-29 22 17的胡萝卜被破坏（即跳跃破坏耕地）且21 22 7为灰色混凝土粉末（即未解锁idea1）且相应计分项为0（防止timeline重复执行），则运行通知函数（修改Idea1ItemGot为1）
execute if blocks -54 10 87   -54 10 87   -50 19 92 all if block 19 22 7 stained_hardened_clay ["color"="cyan"] if score Idea2ItemGot data matches 0 run function levels/idea_2/notice
