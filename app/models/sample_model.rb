class Rather
    def initialize(params)
        @params = params
        @score = {
            :score => 0
        }
    end

    def q1
     if @params[:speed]=="1"
        @score[:score]+=1
     else
        @score[:score]+=0
     end
    end
    
    def q2
     if @params[:prefer]=="1"
        @score[:score]+=1
        else
        @score[:score]+=0
     end
    end
    
    def q3
     if @params[:time]=="1"
        @score[:score]+=1
     else
        @score[:score]+=0
     end
    end 
    
    def q4
     if @params[:you_are]=="1"
        @score[:score]+=1
     else
        @score[:score]+=0
     end
    end
    
    def q5
     if @params[:bathroom]=="1"
        @score[:score]+=1
     else
        @score[:score]+=0
     end
    end
    
    def results
        q1
        q2
        q3
        q4
        q5
          
          result = {
              :selfish =>{
                  :story => "Often think of yourself more than others."},
              :selfless =>{
                  :story => "Have humble and admirable qualities."}
                  }
                  
            if @score[:score] == 3 || @score[:score] >=3
                answer = result[:selfish][:story]
            else
                answer = result[:selfless][:story]
            end
    end
end 




    $rabbit=["A","D","H","J","N"]

    $dog=["C","E","H","K","O"]

    $cat=["C","D","G","L","M"]

    $duck=["B","E","I","J","N"]

    $parrot=["C","F","I","J","N"]

    $lion=["A","D","H","L","N"]

    $wolf=["C","D","H","L","N"]

    $mouse=["A","E","I","L","M"]
    
    $frog=["B","F","I","L","O"]

    $monkey=["C","E","G","K","O"]
    
 def animalresults(user_input)
     if $rabbit == user_input
         "Rabbit"
    elsif $dog == user_input
         "Dog"
         elsif $cat == user_input
         "Cat"
         elsif $duck == user_input
         "Duck"
         elsif $parrot == user_input
         "Parrot"
         elsif $lion == user_input
         "Lion"
         elsif $wolf == user_input
         "Wolf"
         elsif $mouse == user_input
         "Mouse"
         elsif $frog == user_input
         "Frog"
        elsif $monkey == user_input
         "Monkey"
     else 
         "Ant"
     end
 end

    
    # if animalresults == ["A","D","H","J","N"]
    #     answer = "Rabbit"
        
    # elsif animalresults == ["C","E","H","K","O"]
    #     answer = "Dog"
        
    # elsif animalresults == ["C","D","G","L","M"]
    #     answer = "Cat"
        
    # elsif animalresults == ["B","E","I","J","N"]
    #     answer = "Duck"
        
    # elsif animalresults == ["C","F","I","J","N"]
    #     answer = "Parrot"
        
    # elsif animalresults == ["A","D","H","L","N"]
    #     answer = "Lion"
        
    # elsif animalresults == ["C","D","H","L","N"]
    #     answer = "Wolf"
        
    # elsif animalresults == ["A","E","I","L","M"]
    #     answer = "Mouse"
        
    # elsif animalresults == ["B","F","I","L","O"]
    #     answer = "Frog"
        
    # elsif animalresults == ["C","E","G","K","O"]
    #     answer = "Monkey"
        
    # else
    #     answer = "You failed the test somehow, so you are an Ant. Try again!"
    # end
    
