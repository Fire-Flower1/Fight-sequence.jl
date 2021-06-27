function fight(attackmultiplier::Int64, attacklower::Int64, hpforplayer::Int64, monsterlvl::Int64)
    global attackpoints = 1.05*attackmultiplier
    global playerhp = 15+hpforplayer
    yesorno = rand(1:100)
    if yesorno < 33
        whatalien = rand(1:3)
        if whatalien == 1
            println("A [insert name here] attacked you!")
            global alive = "True"
            global hp = 2*monsterlvl
            while alive == "True"
                global attacklow = "False"
                global poisoning = "False"
                println("Use attack [insert name here], [insert name here], or [insert name here]:")
                global answer = "placeholder"
                global answer = readline()
                if answer == "[insert name here]"
                    global poisoning = "True"
                    if attacklow == "True"
                        global hp = hp-attackpoints
                    else
                        global hp = hp-attackpoints/attacklower
                    end 
                    println("You Hit! [insert name here] HP: $(hp)")
                elseif answer == "[insert name here]"
                    global hitormiss = rand(1:5)
                    if hitormiss > 2
                        global hp = hp-(attackpoints*1.5)
                        global poisoning = "False"
                        println("You Hit! [insert name here] HP: $(hp)")
                    else
                        println("You missed ([insert name here] attack lowered)")
                        global attacklow = "True"
                    end
                elseif answer == "[insert name here]"
                    global hitormiss = rand(1:3)
                    if hitormiss == 1
                        global hp = hp/attackmultiplier
                        println("You Hit! [insert name here] HP: $(hp)")
                    else
                        global playerhp = playerhp-5
                        println("You missed and hurt yourself!")
                    end
                end
                if alive == "True"
                    println("[insert name here] is attacking! Your HP: $(playerhp)")
                    println("[insert name here] used [insert name here]!")
                    global playerhp = playerhp-(attackpoints/4)
                    println("Your HP is now $(playerhp)")
                end
                if poisoning == "True"
                    global hp = hp-2
                    println("Poisoning...")
                    println("ENEMY HP: $(hp)")
                end
                if hp < 1
                    global alive = "False"
                    println("You won the battle")
                end
                if playerhp < 1
                    global alive = "False" 
                    print("You lost the battle")
                end
            end
        elseif whatalien == 2
            println("[insert name here] attacked you!")
            global alive = "True"
            global hp = 5*monsterlvl
            while alive == "True"
                global attacklow = "False"
                global poisoning = "False"
                println("Use attack [insert name here], [insert name here], or [insert name here]:")
                global answer = "placeholder"
                global answer = readline()
            
                if answer == "[insert name here]"
                    global poisoning = "True"
                    if attacklow == "True"
                        global hp = hp-attackpoints
                    else
                        global hp = hp-attackpoints/2
                    end 
                    println("You Hit! [insert name here] HP: $(hp)")
                elseif answer == "[insert name here]"
                    global hitormiss = rand(1:5)
                    if hitormiss > 2
                        global hp = hp-(attackpoints*1.5)
                        global poisoning = "False"
                        println("You Hit! [insert name here] HP: $(hp)")
                    else
                        println("You missed ([attack 1 name here] attack lowered)")
                        global attacklow = "True"
                    end
                elseif answer == "[insert name here]"
                    global hitormiss = rand(1:3)
                    if hitormiss == 1
                        global hp = hp/attackmultiplier
                        println("You Hit! [insert name here] HP: $(hp)")
                    else
                        global playerhp = playerhp-5
                        println("You missed and hurt yourself!")
                    end
                end
                if alive == "True"
                    println("[insert name here] is attacking! Your HP: $(playerhp)")
                    println("[insert name here] used [insert name here]!")
                    global playerhp = playerhp-4
                    println("Your HP is now $(playerhp)")
                end
                if poisoning == "True"
                    global hp = hp-2
                    println("Poisoning...")
                    println("ENEMY HP: $(hp)")
                end
                if hp < 1
                    global alive = "False"
                end
                if playerhp < 1
                    global alive = "False" 
                    print("You lost the battle")
                end
            end
        elseif whatalien == 3
            println("A [insert name here] attacked you!")
            global alive = "True"
            global hp = 8*monsterlvl
            while alive == "True"
                global attacklow = "False"
                global poisoning = "False"
                println("Use attack [insert name here], [insert name here], or [insert name here]:")
                global answer = "placeholder"
                global answer = readline()
            
                if answer == "[insert name here]"
                    global poisoning = "True"
                    if attacklow == "True"
                        global hp = hp-attackpoints
                    else
                        global hp = hp-attackpoints/2
                    end 
                    println("You Hit! Bratlle HP: $(hp)")
                elseif answer == "[insert name here]"
                    global hitormiss = rand(1:5)
                    if hitormiss > 2
                        global hp = hp-(attackpoints*1.5)
                        global poisoning = "False"
                        println("You Hit! [insert name here] HP: $(hp)")
                    else
                        println("You missed ([attack 1 name] attack lowered)")
                        global attacklow = "True"
                    end
                elseif answer == "[insert name here]"
                    global hitormiss = rand(1:3)
                    if hitormiss == 1
                        global hp = hp/attackmultiplier 
                        println("You Hit! [insert name here] HP: $(hp)")
                    else
                        global playerhp = playerhp-5
                        println("You missed and hurt yourself!")
                    end
                end
                if alive == "True"
                    println("[insert name here] is attacking! Your HP: $(playerhp)")
                    println("[insert name here] used [insert name here]!")
                    global playerhp = playerhp-5
                    println("Your HP is now $(playerhp)")
                end
                if poisoning == "True"
                    global hp = hp-2
                    println("Poisoning...")
                    println("ENEMY HP: $(hp)")
                end
                if hp < 1
                    global alive = "False"
                    println("You won the battle")
                end
                if playerhp < 1
                    global alive = "False" 
                    print("You lost the battle")
                end
            end
        end
    else
        println("You were not attacked")
    end
end
