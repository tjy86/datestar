
User.delete_all
Question.delete_all
Answer.delete_all

user1 = User.create(:name => 'Church Lady', :password_digest => '1', :tagline => 'well isnt that special?', :age => '64', gender => 'female', :city => 'church', :state => 'KS', :ethnicity => 'white', :description => 'religified old hag')
question1 = Question.create( :question => 'do you believe in god')  
answer1 = Answer.create(:answer1 => 'yes', :answer2 => 'green', :answer3 => 'red')
user1.questions = [question1]
question1.answers = [answer1]

user2 = User.create(:name => 'Brian Fellow', :password_digest => '1', :tagline => 'thats crazy!', :age => '35', gender => 'male', :city => 'New York', :state => 'NY', :ethnicity => 'black', :description => 'yo mama' )
question2 = Question.create(:question => 'who am I?')  
answer2 = Answer.create(:answer1 => 'brian fellow', :answer2 => 'a fool', :answer3 => 'a badass mutha___a')
user2.questions = [question2]
question2.answers = [answer2]

user3 = User.create(:name => 'Matt Foley', :password_digest => '1', :tagline => 'in a van down by the river!', :age => '45', gender => 'male', :city => 'Van down by the River', :state => 'NE', :ethnicity => 'pale as hell', :description => 'motivational speaker')
question3 = Question.create(:question => "what happens if you do drugs?")  
answer3 = Answer.create(:answer1 => 'you end up in a van down by the river ', :answer2 => 'you get high', :answer3 => 'you die ')
user3.questions = [question3]
question3.answers = [answer3]

user4 = User.create(:name => 'Wayne Campbell', :password_digest => '1', :tagline => 'excellent', :age => '38', gender => 'male', :city => 'Aurora', :state => 'IL', :ethnicity => 'white', :description =>'Aurora public access TV talk show host' )
question4 = Question.create(:question => 'favorite sport')  
answer4 = Answer.create(:answer1 => 'hockey', :answer2 => 'football', :answer3 => 'baseball')
user4.questions = [question4]
question4.answers = [answer4]

user5 = User.create(:name => 'Garth Algarl', :password_digest => '1', :tagline => 'schwiiiiiiinnnng', :age => '37' gender => 'male', :city => 'Aurora', :state => 'IL', :ethnicity => 'white', :description =>'Aurora public access TV talk show co-host'
question5 = Question.create(:question => 'favorite song')  
answer5 = Answer.create(:answer1 => 'foxey lady', :answer2 => 'dream weaver', :answer3 => 'bohemian rhapsody')
user5.questions = [question5]
question5.answers = [answer5]




