##########################################################################################################
# Authors: Marie Jose Khoury (202104671) & Rebecca Yazbeck (202201494)                                   #
# This project is a guessing game containing 5 levels                                                    #
# The player should answer all the questions correctly to win all the points and continue the music      #
# One wrong answer will cause the player to lose the game                                                #
# The user gets to chose the level at the begining of the game                                           #
# To recognise the music the user is adviced to start from level 1                                       #
#                                                                                                        #
# This project was prepared for Computer Organisation course Spring 2023				 #
# Last edited: 5/6/2023											 #	
##########################################################################################################
.data
ask_op: .asciiz"Answer: \n"
game: .asciiz"\n\MJ&R QUIZZ\n"
line: .asciiz"______________________________"
ask_name: .asciiz "Please enter your name: "
buffer: .space 30

welcome: .asciiz "Welcome to the game!\n"
full: .asciiz "You need to answer all questions correctly to win the game.\n"
lines: .asciiz "----------------------------------------\n"
level: .asciiz "Enter a level (1-->5)\n"

#questions of level 1:
ques1: .asciiz "Level 1: What is the capital of France?\n"
q1opa: .asciiz "A. London\n"
q1opb: .asciiz "B. Paris\n"
q1opc: .asciiz "C. Berlin\n"
q1opd: .asciiz "D. Madrid\n"
ans1: .byte 'B'

ques2: .asciiz "\nLevel 1: What is the largest planet in our solar system?\n"
q2opa: .asciiz "A. Earth\n"
q2opb: .asciiz "B. Jupiter\n"
q2opc: .asciiz "C. Mars\n"
q2opd: .asciiz "D. Venus\n"
ans2: .byte 'B'

ques3: .asciiz "\nLevel 1: What is the smallest country in the world?\n"
q3opa: .asciiz "A. Russia\n"
q3opb: .asciiz "B. Vatican City\n"
q3opc: .asciiz "C. China\n"
q3opd: .asciiz "D. India\n"
ans3: .byte 'B'

ques4: .asciiz "\nLevel 1: What is the largest ocean in the world?\n"
q4opa: .asciiz "A. Atlantic Ocean\n"
q4opb: .asciiz "B. Indian Ocean\n"
q4opc: .asciiz "C. Arctic Ocean\n"
q4opd: .asciiz "D. Pacific Ocean\n"
ans4: .byte 'D'

ques5: .asciiz "\nLevel 1: What is the capital of Italy?\n"
q5opa: .asciiz "A. Rome\n"
q5opb: .asciiz "B. Paris\n"
q5opc: .asciiz "C. Madrid\n"
q5opd: .asciiz "D. Berlin\n"
ans5: .byte 'A'


#questions of level 2
ques6: .asciiz "\nLevel 2: What is the largest mammal in the world?\n"
q6opa: .asciiz "A. Elephant\n"
q6opb: .asciiz "B. Blue Whale\n"
q6opc: .asciiz "C. Giraffe\n"
q6opd: .asciiz "D. Hippopotamus\n"
ans6: .byte 'B'

ques7: .asciiz "\nLevel 2: What is the smallest planet in our solar system?\n"
q7opa: .asciiz "A. Earth\n"
q7opb: .asciiz "B. Jupiter\n"
q7opc: .asciiz "C. Mars\n"
q7opd: .asciiz "D. Mercury\n"
ans7: .byte 'D'

ques8: .asciiz "\nLevel 2: What is the largest desert in the world?\n"
q8opa: .asciiz "A. Sahara Desert\n"
q8opb: .asciiz "B. Gobi Desert\n"
q8opc: .asciiz "C. Mojave Desert\n"
q8opd: .asciiz "D. Atacama Desert\n"
ans8: .byte 'A'

ques9: .asciiz "\nLevel 2: What is the highest mountain in Africa?\n"
q9opa: .asciiz "A. Mount Everest\n"
q9opb: .asciiz "B. Mount Kilimanaro\n"
q9opc: .asciiz "C. Mount Fuji\n"
q9opd: .asciiz "D. Mount McKinley\n"
ans9: .byte 'B'

ques10: .asciiz "\nLevel 2: What is the capital of Australia?\n"
q10opa: .asciiz "A. Sydney\n"
q10opb: .asciiz "B. Melbourne\n"
q10opc: .asciiz "C. Canberra\n"
q10opd: .asciiz "D. Brisbane\n"
ans10: .byte 'C'


#questions of level 3
ques11: .asciiz "\nLevel 3: What is the largest bird in the world?\n"
q11opa: .asciiz "A. Ostrich\n"
q11opb: .asciiz "B. Eagle\n"
q11opc: .asciiz "C. Penguin\n"
q11opd: .asciiz "D. Flamingo\n"
ans11: .byte 'A'

ques12: .asciiz "\nLevel 3: What is the smallest continent in the world?\n"
q12opa: .asciiz "A. Europe\n"
q12opb: .asciiz "B. Asia\n"
q12opc: .asciiz "C. Australia\n"
q12opd: .asciiz "D. Antarctica\n"
ans12: .byte 'D'

ques13: .asciiz "\nLevel 3: What is the largest country in the world by land area?\n"
q13opa: .asciiz "A. China\n"
q13opb: .asciiz "B. Russia\n"
q13opc: .asciiz "C. United States\n"
q13opd: .asciiz "D. Canada\n"
ans13: .byte 'B'

ques14: .asciiz "\nLevel 3: What is the capital of Brazil?\n"
q14opa: .asciiz "A. Rio de Janeiro\n"
q14opb: .asciiz "B. Brasilia\n"
q14opc: .asciiz "C. Sao Paulo"
q14opd: .asciiz "D. Salvador\n"
ans14: .byte 'B'

ques15: .asciiz "\nLevel 3: What is the largest lake in Africa?\n"
q15opa: .asciiz "A. Lake Victoria\n"
q15opb: .asciiz "B. Lake Tanganyika\n"
q15opc: .asciiz "C. Lake Malawi\n"
q15opd: .asciiz "D. Lake Chad\n"
ans15: .byte 'A'


#questions of level 4
ques16: .asciiz "\nLevel 4: What is the largest continent in the world?\n"
q16opa: .asciiz "A. Europe\n"
q16opb: .asciiz "B. Asia\n"
q16opc: .asciiz "C. Australia\n"
q16opd: .asciiz "D. Antarctica\n"
ans16: .byte 'B'

ques17: .asciiz "\nLevel 4: What is the capital of South Africa?\n"
q17opa: .asciiz "A. Johannesburg\n"
q17opb: .asciiz "B. Cape Town\n"
q17opc: .asciiz "C. Pretoria\n"
q17opd: .asciiz "D. Durban\n"
ans17: .byte 'C'

ques18: .asciiz "\nLevel 4: What is the largest river in the world?\n"
q18opa: .asciiz "A. Nile River\n"
q18opb: .asciiz "B. Amazon River\n"
q18opc: .asciiz "C. Yangtze River\n"
q18opd: .asciiz "D. Mississippi River\n"
ans18: .byte 'B'

ques19: .asciiz "\nLevel 4: What is the capital of Canada?\n"
q19opa: .asciiz "A. Toronto\n"
q19opb: .asciiz "B. Vancouver\n"
q19opc: .asciiz "C. Ottawa\n"
q19opd: .asciiz "D. Montreal\n"
ans19: .byte 'C'

ques20: .asciiz "\nLevel 4: What is the largest island in the world?\n"
q20opa: .asciiz "A. Greenland\n"
q20opb: .asciiz "B. Madagascar\n"
q20opc: .asciiz "C. Borneo\n"
q20opd: .asciiz "D. Sumatra\n"
ans20: .byte 'A'


#question of level 5
ques21: .asciiz "\nLevel 5: What is the capital of Japan?\n"
q21opa: .asciiz "A. Tokyo\n"
q21opb: .asciiz "B. Kyoto\n"
q21opc: .asciiz "C. Osaka\n"
q21opd: .asciiz "D. Hiroshima\n"
ans21: .byte 'A'

ques22: .asciiz "\nLevel 5: What is the largest country in the world by population?\n"
q22opa: .asciiz "A. India\n"
q22opb: .asciiz "B. China\n"
q22opc: .asciiz "C. United States\n"
q22opd: .asciiz "D. Russia\n"
ans22: .byte 'B'

ques23: .asciiz "\nLevel 5: What is the capital of Egypt?\n"
q23opa: .asciiz "A. Cairo\n"
q23opb: .asciiz "B. Alexandria\n"
q23opc: .asciiz "C. Luxor\n"
q23opd: .asciiz "D. Giza\n"
ans23: .byte 'A'

ques24: .asciiz "\nLevel 5: What is the largest waterfall in the world?\n"
q24opa: .asciiz "A. Niagara Falls\n"
q24opb: .asciiz "B. Angel Falls\n"
q24opc: .asciiz "C. Victoria Falls\n"
q24opd:  .asciiz  "D. Iguazu Falls\n"
ans24: .byte 'C'

ques25: .asciiz "\nLevel 5: What is the capital of Argentina?\n"
q25opa: .asciiz "A. Buenos Aires\n"
q25opb: .asciiz "B. Cordoba\n"
q25opc: .asciiz "C. Rosario\n"
q25opd: .asciiz "D. Mendoza\n"
ans25: .byte 'A'


#  to display the score:
Lost :.asciiz "\n\ Sorry, you lost the game.\n"
Win: .asciiz "\nMabrouk! you got all the right questions\n"
score: .word 0
	box1: .asciiz"\n    ----------------------------------------------------\n"
	s_card: .asciiz"    |                    SCORECARD                      |\n"
	box2: .asciiz"    -------------------------------------------------------\n"
	name: .asciiz"\nNAME:"
	buffer1: .space 30
	score_out: .asciiz"\nSCORE:"

	
	# for the music effect
	pitchC: .byte 60
	pitchD: .byte 62
	pitchE: .byte 64
	pitchF: .byte 65
	pitchG: .byte 67
	pitchA: .byte 69
	pitchB: .byte 71
	pitchCC: .byte 72
    	instrument: .byte 14
    	volume: .byte 127
    	duration: .byte 100

.text
.globl main

main:
   #play the music 

        li $v0, 31
        lb $a0, pitchC
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

        li $v0, 31
        lb $a0, pitchD
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall
        
        li $v0, 31
        lb $a0, pitchE
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

        li $v0, 31
        lb $a0, pitchF
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall
        
        li $v0, 31
        lb $a0, pitchG
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall
               
        li $v0, 31
        lb $a0, pitchA
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall
      
        li $v0, 31
        lb $a0, pitchB
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall
        
        li $v0, 31
        lb $a0, pitchCC
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall
    
# display the name of the game
li $v0, 4
la $a0, game
syscall

# ask for the player's name
li $v0, 4
la $a0, ask_name
syscall

# read the player's name
li $v0, 8
la $a0, buffer
li $a1, 30
syscall
   #play the music 

        li $v0, 31
        lb $a0, pitchG
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

        
 
    
# display a welcome message
li $v0, 4
la $a0, game
syscall
        
 
    
# display the game instructions
li $v0, 4
la $a0, full
syscall

# ask for the game level
li $v0, 4
la $a0, level
syscall

# read the game level
li $v0, 5
syscall
move $t0, $v0

# initialize the score to 0
li $t1, 0

# start the game loop
game_loop:
    # display the questions based on the level
    beq $t0, 1, level1
    beq $t0, 2, level2
    beq $t0, 3, level3
    beq $t0, 4, level4
    beq $t0, 5, level5


level1:
   #play the music  

         li $v0, 31
        lb $a0, pitchC
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

  
                

# Display Q1 and the choices
    li $v0, 4
    la $a0, ques1
    syscall
    li $v0, 4
    la $a0, q1opa
    syscall
    li $v0, 4
    la $a0, q1opb
    syscall
    li $v0, 4
    la $a0, q1opc
    syscall
    li $v0, 4
    la $a0, q1opd
    syscall

    # ask for the answer
    li $v0, 4
    la $a0, ask_op
    syscall
    li $v0, 12
    syscall
    move $t2, $v0

    # check the answer
    lb $t3, ans1
    beq $t2, $t3, correct1
    j incorrect
    
    correct1:
    # increment the score by 1
    addi $t1, $t1, 1

   #play the music 

        li $v0, 31
        lb $a0, pitchC
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall


    
#Q2
    li $v0, 4
    la $a0, ques2
    syscall
    li $v0, 4
    la $a0, q2opa
    syscall
    li $v0, 4
    la $a0, q2opb
    syscall
    li $v0, 4
    la $a0, q2opc
    syscall
    li $v0, 4
    la $a0, q2opd
    syscall

    # ask for the answer
    li $v0, 4
    la $a0, ask_op
    syscall
    li $v0, 12
    syscall
    move $t2, $v0

    # check the answer
    lb $t3, ans2
    beq $t2, $t3, correct2
    j incorrect
    
    correct2:
    # increment the score
    addi $t1, $t1, 1


   #play the music 

        li $v0, 31
        lb $a0, pitchC
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

    
#Q3
    li $v0, 4
    la $a0, ques3
    syscall
    li $v0, 4
    la $a0, q3opa
    syscall
    li $v0, 4
    la $a0, q3opb
    syscall
    li $v0, 4
    la $a0, q3opc
    syscall
    li $v0, 4
    la $a0, q3opd
    syscall

    # ask for the answer
    li $v0, 4
    la $a0, ask_op
    syscall
    li $v0, 12
    syscall
    move $t2, $v0

    # check the answer
    lb $t3, ans3
    beq $t2, $t3, correct3
    j incorrect
    
    correct3:
    # increment the score
    addi $t1, $t1, 1

       #play the music 

        li $v0, 31
        lb $a0, pitchC
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall


        
 #Q4
    
    li $v0, 4
    la $a0, ques4
    syscall
    li $v0, 4
    la $a0, q4opa
    syscall
    li $v0, 4
    la $a0, q4opb
    syscall
    li $v0, 4
    la $a0, q4opc
    syscall
    li $v0, 4
    la $a0, q4opd
    syscall

    # ask for the answer
    li $v0, 4
    la $a0, ask_op
    syscall
    li $v0, 12
    syscall
    move $t2, $v0

    # check the answer
    lb $t3, ans4
    beq $t2, $t3, correct4
    j incorrect
    
    correct4:
    # increment the score
    addi $t1, $t1, 1  
  
       #play the music 

        li $v0, 31
        lb $a0, pitchD
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

 
      
  #Q5 
    li $v0, 4
    la $a0, ques5
    syscall
    li $v0, 4
    la $a0, q5opa
    syscall
    li $v0, 4
    la $a0, q5opb
    syscall
    li $v0, 4
    la $a0, q5opc
    syscall
    li $v0, 4
    la $a0, q5opd
    syscall

    # ask for the answer
    li $v0, 4
    la $a0, ask_op
    syscall
    li $v0, 12
    syscall
    move $t2, $v0

    # check the answer
    lb $t3, ans5
    beq $t2, $t3, correct5
    j incorrect
    
    correct5:
    # increment the score
    addi $t1, $t1, 1 
    # after successfully passing level 1 the game will directly pass to level 2 
    j level2
    


level2:

   #play the music 

             li $v0, 31
        lb $a0, pitchE
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

 
    
#Q6
    li $v0, 4
    la $a0, ques6
    syscall
    li $v0, 4
    la $a0, q6opa
    syscall
    li $v0, 4
    la $a0, q6opb
    syscall
    li $v0, 4
    la $a0, q6opc
    syscall
    li $v0, 4
    la $a0, q6opd
    syscall

    # ask for the answer
    li $v0, 4
    la $a0, ask_op
    syscall
    li $v0, 12
    syscall
    move $t2, $v0

    # check the answer
    lb $t3, ans6
    beq $t2, $t3, correct6
    j incorrect
    
    correct6:
    # increment the score by 2 as in level 2 the player wins 2 points for each valid question
    addi $t1, $t1, 2

   #play the music 

        li $v0, 31
        lb $a0, pitchD
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

#Q7
    li $v0, 4
    la $a0, ques7
    syscall
    li $v0, 4
    la $a0, q7opa
    syscall
    li $v0, 4
    la $a0, q7opb
    syscall
    li $v0, 4
    la $a0, q7opc
    syscall
    li $v0, 4
    la $a0, q7opd
    syscall

    # ask for the answer
    li $v0, 4
    la $a0, ask_op
    syscall
    li $v0, 12
    syscall
    move $t2, $v0

    # check the answer
    lb $t3, ans7
    beq $t2, $t3, correct7
    j incorrect
    
    correct7:
    # increment the score
    addi $t1, $t1, 2

   #play the music 

        li $v0, 31
        lb $a0, pitchC
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

#Q8
    li $v0, 4
    la $a0, ques8
    syscall
    li $v0, 4
    la $a0, q8opa
    syscall
    li $v0, 4
    la $a0, q8opb
    syscall
    li $v0, 4
    la $a0, q8opc
    syscall
    li $v0, 4
    la $a0, q8opd
    syscall

    # ask for the answer
    li $v0, 4
    la $a0, ask_op
    syscall
    li $v0, 12
    syscall
    move $t2, $v0

    # check the answer
    lb $t3, ans8
    beq $t2, $t3, correct8
    j incorrect
    
    correct8:
    # increment the score
    addi $t1, $t1, 2

       #play the music 

        li $v0, 31
        lb $a0, pitchE
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

 #Q9
    
    li $v0, 4
    la $a0, ques9
    syscall
    li $v0, 4
    la $a0, q9opa
    syscall
    li $v0, 4
    la $a0, q9opb
    syscall
    li $v0, 4
    la $a0, q9opc
    syscall
    li $v0, 4
    la $a0, q9opd
    syscall

    # ask for the answer
    li $v0, 4
    la $a0, ask_op
    syscall
    li $v0, 12
    syscall
    move $t2, $v0

    # check the answer
    lb $t3, ans9
    beq $t2, $t3, correct9
    j incorrect
    
    correct9:
    # increment the score
    addi $t1, $t1, 2 
 
       #play the music 

        li $v0, 31
        lb $a0, pitchD
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

       
  #Q10
    li $v0, 4
    la $a0, ques10
    syscall
    li $v0, 4
    la $a0, q10opa
    syscall
    li $v0, 4
    la $a0, q10opb
    syscall
    li $v0, 4
    la $a0, q10opc
    syscall
    li $v0, 4
    la $a0, q10opd
    syscall

    # ask for the answer
    li $v0, 4
    la $a0, ask_op
    syscall
    li $v0, 12
    syscall
    move $t2, $v0

    # check the answer
    lb $t3, ans10
    beq $t2, $t3, correct10
    j incorrect
    
    correct10:
    # increment the score
    addi $t1, $t1, 2 
    # pass to level 3 
    j level3



level3:

   #play the music 

                li $v0, 31
        lb $a0, pitchD
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

 
    
#Q11
    li $v0, 4
    la $a0, ques11
    syscall
    li $v0, 4
    la $a0, q11opa
    syscall
    li $v0, 4
    la $a0, q11opb
    syscall
    li $v0, 4
    la $a0, q11opc
    syscall
    li $v0, 4
    la $a0, q11opd
    syscall

    # ask for the answer
    li $v0, 4
    la $a0, ask_op
    syscall
    li $v0, 12
    syscall
    move $t2, $v0

    # check the answer
    lb $t3, ans11
    beq $t2, $t3, correct11
    j incorrect
    
    correct11:
    # increment the score by 3
    addi $t1, $t1, 3 

   #play the music 

        li $v0, 31
        lb $a0, pitchC
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

 
    
#Q12
    li $v0, 4
    la $a0, ques12
    syscall
    li $v0, 4
    la $a0, q12opa
    syscall
    li $v0, 4
    la $a0, q12opb
    syscall
    li $v0, 4
    la $a0, q12opc
    syscall
    li $v0, 4
    la $a0, q12opd
    syscall

    # ask for the answer
    li $v0, 4
    la $a0, ask_op
    syscall
    li $v0, 12
    syscall
    move $t2, $v0

    # check the answer
    lb $t3, ans12
    beq $t2, $t3, correct12
    j incorrect
    
    correct12:
    # increment the score
    addi $t1, $t1, 3

   #play the music 

        li $v0, 31
        lb $a0, pitchC
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

 
    
#Q13
    li $v0, 4
    la $a0, ques13
    syscall
    li $v0, 4
    la $a0, q13opa
    syscall
    li $v0, 4
    la $a0, q13opb
    syscall
    li $v0, 4
    la $a0, q13opc
    syscall
    li $v0, 4
    la $a0, q13opd
    syscall

    # ask for the answer
    li $v0, 4
    la $a0, ask_op
    syscall
    li $v0, 12
    syscall
    move $t2, $v0

    # check the answer
    lb $t3, ans13
    beq $t2, $t3, correct13
    j incorrect
    
    correct13:
    # increment the score
    addi $t1, $t1, 3
  
       #play the music 

        li $v0, 31
        lb $a0, pitchD
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall


      
 #Q14
    
    li $v0, 4
    la $a0, ques14
    syscall
    li $v0, 4
    la $a0, q14opa
    syscall
    li $v0, 4
    la $a0, q14opb
    syscall
    li $v0, 4
    la $a0, q14opc
    syscall
    li $v0, 4
    la $a0, q14opd
    syscall

    # ask for the answer
    li $v0, 4
    la $a0, ask_op
    syscall
    li $v0, 12
    syscall
    move $t2, $v0

    # check the answer
    lb $t3, ans14
    beq $t2, $t3, correct14
    j incorrect
    
    correct14:
    # increment the score
    addi $t1, $t1, 3  
    
       #play the music 

        li $v0, 31
        lb $a0, pitchE
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

 
    
  #Q15
    li $v0, 4
    la $a0, ques15
    syscall
    li $v0, 4
    la $a0, q15opa
    syscall
    li $v0, 4
    la $a0, q15opb
    syscall
    li $v0, 4
    la $a0, q15opc
    syscall
    li $v0, 4
    la $a0, q15opd
    syscall

    # ask for the answer
    li $v0, 4
    la $a0, ask_op
    syscall
    li $v0, 12
    syscall
    move $t2, $v0

    # check the answer
    lb $t3, ans15
    beq $t2, $t3, correct15
    j incorrect
    
    correct15:
    # increment the score
    addi $t1, $t1, 3
    #pass to level 4
    j level4


level4:
   #play the music 

        li $v0, 31
        lb $a0, pitchC
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

    
#Q16
    li $v0, 4
    la $a0, ques16
    syscall
    li $v0, 4
    la $a0, q16opa
    syscall
    li $v0, 4
    la $a0, q16opb
    syscall
    li $v0, 4
    la $a0, q16opc
    syscall
    li $v0, 4
    la $a0, q16opd
    syscall

    # ask for the answer
    li $v0, 4
    la $a0, ask_op
    syscall
    li $v0, 12
    syscall
    move $t2, $v0

    # check the answer
    lb $t3, ans16
    beq $t2, $t3, correct16
    j incorrect
    
    correct16:
    # increment the score by 4
    addi $t1, $t1, 4


   #play the music 

        li $v0, 31
        lb $a0, pitchE
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

 
    
#Q17
    li $v0, 4
    la $a0, ques17
    syscall
    li $v0, 4
    la $a0, q17opa
    syscall
    li $v0, 4
    la $a0, q17opb
    syscall
    li $v0, 4
    la $a0, q17opc
    syscall
    li $v0, 4
    la $a0, q17opd
    syscall

    # ask for the answer
    li $v0, 4
    la $a0, ask_op
    syscall
    li $v0, 12
    syscall
    move $t2, $v0

    # check the answer
    lb $t3, ans17
    beq $t2, $t3, correct17
    j incorrect
    
    correct17:
    # increment the score
    addi $t1, $t1, 4


   #play the music 

        li $v0, 31
        lb $a0, pitchA
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

  
    
#Q18
    li $v0, 4
    la $a0, ques18
    syscall
    li $v0, 4
    la $a0, q18opa
    syscall
    li $v0, 4
    la $a0, q18opb
    syscall
    li $v0, 4
    la $a0, q8opc
    syscall
    li $v0, 4
    la $a0, q18opd
    syscall

    # ask for the answer
    li $v0, 4
    la $a0, ask_op
    syscall
    li $v0, 12
    syscall
    move $t2, $v0

    # check the answer
    lb $t3, ans18
    beq $t2, $t3, correct18
    j incorrect
    
    correct18:
    # increment the score
    addi $t1, $t1, 4
  
       #play the music 

        li $v0, 31
        lb $a0, pitchG
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall


      
 #Q19
    
    li $v0, 4
    la $a0, ques19
    syscall
    li $v0, 4
    la $a0, q19opa
    syscall
    li $v0, 4
    la $a0, q19opb
    syscall
    li $v0, 4
    la $a0, q19opc
    syscall
    li $v0, 4
    la $a0, q19opd
    syscall

    # ask for the answer
    li $v0, 4
    la $a0, ask_op
    syscall
    li $v0, 12
    syscall
    move $t2, $v0

    # check the answer
    lb $t3, ans19
    beq $t2, $t3, correct19
    j incorrect
    
    correct19:
    # increment the score
    addi $t1, $t1, 4 
    
       #play the music 

        li $v0, 31
        lb $a0, pitchG
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

    
  #Q20
    li $v0, 4
    la $a0, ques20
    syscall
    li $v0, 4
    la $a0, q20opa
    syscall
    li $v0, 4
    la $a0, q20opb
    syscall
    li $v0, 4
    la $a0, q20opc
    syscall
    li $v0, 4
    la $a0, q20opd
    syscall

    # ask for the answer
    li $v0, 4
    la $a0, ask_op
    syscall
    li $v0, 12
    syscall
    move $t2, $v0

    # check the answer
    lb $t3, ans20
    beq $t2, $t3, correct20
    j incorrect
    
    correct20:
    # increment the score
    addi $t1, $t1, 4  
    # pass to level 5
    j level5
 
       
level5:
   #play the music 

        li $v0, 31
        lb $a0, pitchA
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

    
#Q21
    li $v0, 4
    la $a0, ques21
    syscall
    li $v0, 4
    la $a0, q21opa
    syscall
    li $v0, 4
    la $a0, q21opb
    syscall
    li $v0, 4
    la $a0, q21opc
    syscall
    li $v0, 4
    la $a0, q21opd
    syscall

    # ask for the answer
    li $v0, 4
    la $a0, ask_op
    syscall
    li $v0, 12
    syscall
    move $t2, $v0

    # check the answer
    lb $t3, ans21
    beq $t2, $t3, correct21
    j incorrect
    
    correct21:
    # increment the score by 5
    addi $t1, $t1, 5


   #play the music 

        li $v0, 31
        lb $a0, pitchF
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

 
    
#Q22
    li $v0, 4
    la $a0, ques22
    syscall
    li $v0, 4
    la $a0, q22opa
    syscall
    li $v0, 4
    la $a0, q22opb
    syscall
    li $v0, 4
    la $a0, q22opc
    syscall
    li $v0, 4
    la $a0, q22opd
    syscall

    # ask for the answer
    li $v0, 4
    la $a0, ask_op
    syscall
    li $v0, 12
    syscall
    move $t2, $v0

    # check the answer
    lb $t3, ans22
    beq $t2, $t3, correct22
    j incorrect
    
    correct22:
    # increment the score
    addi $t1, $t1, 5


   #play the music 

        li $v0, 31
        lb $a0, pitchG
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

 
    
#Q23
    li $v0, 4
    la $a0, ques23
    syscall
    li $v0, 4
    la $a0, q23opa
    syscall
    li $v0, 4
    la $a0, q23opb
    syscall
    li $v0, 4
    la $a0, q23opc
    syscall
    li $v0, 4
    la $a0, q23opd
    syscall

    # ask for the answer
    li $v0, 4
    la $a0, ask_op
    syscall
    li $v0, 12
    syscall
    move $t2, $v0

    # check the answer
    lb $t3, ans23
    beq $t2, $t3, correct23
    j incorrect
    
    correct23:
    # increment the score
    addi $t1, $t1, 5
    
       #play the music 

        li $v0, 31
        lb $a0, pitchE
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

 
    
 #Q24
    
    li $v0, 4
    la $a0, ques24
    syscall
    li $v0, 4
    la $a0, q24opa
    syscall
    li $v0, 4
    la $a0, q24opb
    syscall
    li $v0, 4
    la $a0, q24opc
    syscall
    li $v0, 4
    la $a0, q24opd
    syscall

    # ask for the answer
    li $v0, 4
    la $a0, ask_op
    syscall
    li $v0, 12
    syscall
    move $t2, $v0

    # check the answer
    lb $t3, ans24
    beq $t2, $t3, correct24
    j incorrect
    
    correct24:
    # increment the score
    addi $t1, $t1, 5  
    
       #play the music 

        li $v0, 31
        lb $a0, pitchG
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

    
  #Q25
    li $v0, 4
    la $a0, ques25
    syscall
    li $v0, 4
    la $a0, q25opa
    syscall
    li $v0, 4
    la $a0, q25opb
    syscall
    li $v0, 4
    la $a0, q25opc
    syscall
    li $v0, 4
    la $a0, q25opd
    syscall

    # ask for the answer
    li $v0, 4
    la $a0, ask_op
    syscall
    li $v0, 12
    syscall
    move $t2, $v0

    # check the answer
    lb $t3, ans25
    beq $t2, $t3, correct25
    j incorrect
    
    correct25:
    # increment the score
    addi $t1, $t1, 5
    # the game is successfully completed 
    # display a message indicating that the palyer won.
    li $v0, 4
    la $a0, Win
    syscall  
     # jump to end_game to display the score
    j end_game 
  
incorrect:
    # display a message indicating that the user lost and end the game
    li $v0, 4
    la $a0, Lost
    syscall
    j end_game



end_game:
    # display the scorecard
    li $v0, 4
    la $a0, box1
    syscall
    li $v0, 4
    la $a0, s_card
    syscall
    li $v0, 4
    la $a0, box2
    syscall
    li $v0, 4
    la $a0, name
    syscall
    
   #play the music 
        li $v0, 31
        lb $a0, pitchC
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

        li $v0, 31
        lb $a0, pitchD
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall
        
        li $v0, 31
        lb $a0, pitchE
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall

        li $v0, 31
        lb $a0, pitchF
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall
        
        li $v0, 31
        lb $a0, pitchG
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall
               
        li $v0, 31
        lb $a0, pitchA
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall
      
        li $v0, 31
        lb $a0, pitchB
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall
        
        li $v0, 31
        lb $a0, pitchCC
        la $a1, duration
        la $a2, instrument
        la $a3, volume
        syscall
    
    # display the score        
    li $v0, 4
    la $a0, buffer
    syscall
    li $v0, 4
    la $a0, score_out
    syscall
    li $v0, 1
    move $a0, $t1
    syscall



    # exit the program
    li $v0, 10
    syscall
