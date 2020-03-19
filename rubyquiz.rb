q1="Which of these U.S. states does NOT border Canada?\n(a)Alaska\n(b)Maine\n(c)Indiana"
q2="Which of these countries was NOT a part of the Soviet Union?\n(a)Georgia\n(b)Poland\n(c)Belarus"
q3="Which of these cities is NOT a national capital?\n(a)Cairo\n(b)Istanbul\n(c)Bangkok"
q4="Which of these countries was NEVER part of the British Empire?\n(a)Ireland\n(b)Kenya\n(c)Thailand"
q5="Which one of these countries is NOT in Central America?\n(a)Honduras\n(b)Belize\n(c)Suriname"
q6="Which of these countries is NOT majority-Muslim?\n(a)Ethiopia\n(b)Albania\n(c)Indonesia"
q7="Which of these countries is NOT recognized by the United Nations?\n(a)Israel\n(b)Taiwan\n(c)Iran"
q8="Which of these mountain ranges is NOT in Europe?\n(a)The Alps\n(b)Atlas Mountains\n(c)Carpathian Mountains"
q9="Which of these things is NOT located in Africa?\n(a)Lake Victoria\n(b)Aswan Dam\n(c)Gobi Desert"
q10="Which of these countries does NOT have only one border?\n(a)North Korea\n(b)Ireland\n(c)Portugal"

class Question
    attr_accessor :prompt,:answer
    def initialize(prompt,answer)
        @prompt=prompt
        @answer=answer
    end
end

questions = [
    Question.new(q1,"c"), Question.new(q2,"b"), Question.new(q3,"b"), Question.new(q4,"c"), Question.new(q5,"c"), Question.new(q6,"a"), Question.new(q7,"b"), Question.new(q8,"b"), Question.new(q9,"c"), Question.new(q10,"a")
]

def runtest(questions)
    score = 0
    for i in 0..(questions.length-1)
        puts questions[i].prompt
        answergiven = gets.chomp()
        if answergiven == questions[i].answer
           score += 1
        end
    end
    puts ("You got " + score.to_s + "/" + questions.length.to_s)
end
runtest(questions)
