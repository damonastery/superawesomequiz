namespace :fake_quiz_data do

  desc "Generate fake data to populate 4 quizzes"

  task :populate_quizzes => :environment do

    # generate 3 user
    3.times do 
      user = User.create(name: Faker::Name.first_name, email: Faker::Internet.email)
    end

    # generate 2 category
    2.times do
      category = Category.create(title: Faker::Lorem.word)
    end

    # generate 3 quiz for each category
    Category.all.each do |c|
      3.times do
        quiz = c.quizzes.create(title: Faker::Company.bs, body: Faker::Lorem.sentence(10), level: [1, 2, 3].sample, category_id: Category.all.sample.id)
      end
    end

    # generate 10 questions for each quiz
=begin    
    Quiz.all.each do |quiz|
      10.times do 
        question = quiz.questions.create(title: Faker::Lorem.word, body: Faker::Lorem.sentence(5))
      end
    end


    # generate 3 answers for each question
    Question.all.each do |question|
      3.times do
        answer = question.answers.create(body: Faker::Lorem.sentences(5), correct: [true, false].sample)
      end
    end
=end

    # generate
  end

end
