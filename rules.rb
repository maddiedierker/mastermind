# This class displays the rules of MasterMind to player
class Rules
    attr_accessor :rule_confirmation

    def initialize(rule_confirmation)
        show_rules(rule_confirmation)
    end

    # Use player input to display rules of game or begin playing
    def show_rules(rule_confirmation)
        if rule_confirmation == "Y" || rule_confirmation == "y"
            puts %Q{\tHere are the rules of the game:
            1. You will choose a code made up of 4 colors (there can be duplicates)
            2. The colors you can choose from are RED, GREEN, ORANGE, YELLOW, BLUE, and PURPLE
            3. After each turn I take, you will confirm if any of the colors I have chosen are 
            correct AND if they are in the correct position by doing the following:
                a. Give me 0 points if the color does not exist in your code
                b. Give me 1 point if the color is in your code, but in the wrong position
                c. Give me 2 points if the color is in your code and in the correct position
                EXAMPLE: My guess is [RED, BLUE, GREEN, ORANGE] and your code is [YELLOW, RED, GREEN, BLUE]
                        You'll give me the following score: "1120"
            4. If I can't guess the code in 10 turns, you win!

            Let's start playing!
            }
        else
            puts "Okay, let's start playing!\n\n"
        end
    end
end