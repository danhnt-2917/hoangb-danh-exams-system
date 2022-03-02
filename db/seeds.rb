5.times do |n|
User.create!(name: Faker::Name.name,
             address: Faker::Address.country,
             phone: Faker::PhoneNumber.cell_phone,
             email: "admin-#{n+1}@exams_system.com",
             role: 1,
             password: "admin123",
             password_confirmation: "admin123")
end

20.times do |n|
  User.create!(name: Faker::Name.name,
               address: Faker::Address.country,
               phone: Faker::PhoneNumber.cell_phone,
               email: "user-#{n+1}@exams_system.com",
               password: "user123",
               password_confirmation: "user123")
end

Subject.create!(name: "Ruby",
                description: "Ruby - ngôn ngữ lập trình kịch bản, hướng đối tượng")
Subject.create!(name: "MySQL",
                description: "MySQL - Hệ QTCSDL nguồn mở được sử dụng phổ biến")
Subject.create!(name: "Ruby on Rails",
                description: "Web Framework dựa trên ngôn ngữ Ruby")
Subject.create!(name: "Git",
                description: "Hệ thống quản lý phân tán hiệu quả")

Question.create!(content: "Biến bắt đầu bằng hai ký tự @@ trong Ruby là loại biến nào?",
                 subject_id: 1,
                 user_id: Random.rand(1..5))
Answer.create!(content: "Biến Instance",
               question_id: 1)
Answer.create!(content: "Biến Class",
               is_answer: true,
               question_id: 1)
Answer.create!(content: "Biến Local",
               question_id: 1)
Answer.create!(content: "Biến Global",
               question_id: 1)

Question.create!(content: "Lớp cha của lớp String trong Ruby?",
                 subject_id: 1,
                 user_id: Random.rand(1..5))
Answer.create!(content: "Object",
               question_id: 2)
Answer.create!(content: "Basic Object",
               question_id: 2)
Answer.create!(content: "Class",
               is_answer: true,
               question_id: 2)
Answer.create!(content: "Char",
               question_id: 2)

Question.create!(content: "Câu lệnh nào sau đây sử dụng biến Instance?",
                 subject_id: 1,
                 user_id: Random.rand(1..5))
Answer.create!(content: "Frax = 50",
               question_id: 3)
Answer.create!(content: "@@Frax = 50",
               question_id: 3)
Answer.create!(content: "$Frax = 50",
               question_id: 3)
Answer.create!(content: "@Frax = 50",
               is_answer: true,
               question_id: 3)

Question.create!(content: "Giá trị của x trong biểu thức x = 100_000 / 100 ?",
                 subject_id: 1,
                 user_id: Random.rand(1..5))
Answer.create!(content: "10",
               question_id: 4)
Answer.create!(content: "1.0",
               question_id: 4)
Answer.create!(content: "1000",
               is_answer: true,
               question_id: 4)
Answer.create!(content: "100",
               question_id: 4)


Question.create!(content: "Kiểu nào sau đây là kiểu nguyên thủy trong Ruby?",
                 subject_id: 1,
                 user_id: Random.rand(1..5))
Answer.create!(content: "String",
               question_id: 5)
Answer.create!(content: "Integer",
               question_id: 5)
Answer.create!(content: "Float",
               question_id: 5)
Answer.create!(content: "Char",
               question_id: 5)
Answer.create!(content: "Không lựa chọn nào đúng",
               is_answer: true,
               question_id: 5)

Question.create!(content: "Trong Ruby, !!nil có nghĩa là?",
                 subject_id: 1,
                 user_id: Random.rand(1..5))
Answer.create!(content: "Nil",
               question_id: 6)
Answer.create!(content: "True",
               question_id: 6)
Answer.create!(content: "False",
               is_answer: true,
               question_id: 6)
Answer.create!(content: "0",
               question_id: 6)

Question.create!(content: "nil.nil? trả về kết quả ra sao?",
                 subject_id: 1,
                 user_id: Random.rand(1..5))
Answer.create!(content: "Đưa ra một ngoại lệ",
               question_id: 7)
Answer.create!(content: "false",
               question_id: 7)
Answer.create!(content: "true",
               is_answer: true,
               question_id: 7)
Answer.create!(content: "nil",
               question_id: 7)

Question.create!(content: "Câu lệnh nào dưới đây sẽ trả về thời gian hiện tại dưới dạng Unix time",
                 subject_id: 1,
                 user_id: Random.rand(1..5))
Answer.create!(content: "Time.now.unixtime",
               question_id: 8)
Answer.create!(content: "Time.now.to_a",
               question_id: 8)
Answer.create!(content: "Time.now.to_i",
               is_answer: true,
               question_id: 8)
Answer.create!(content: "Time.now.inspect",
               question_id: 8)

Question.create!(content: "Symbols trong Ruby có đặc điểm gì?",
                 subject_id: 1,
                 user_id: Random.rand(1..5))
Answer.create!(content: "Khả biến",
               question_id: 9)
Answer.create!(content: "Bất biến",
               is_answer: true,
               question_id: 9)
Answer.create!(content: "Dạng ngắn gọn của string",
               question_id: 9)
Answer.create!(content: "Làm khóa cho Hash",
               question_id: 9)

Question.create!(content: "A = 5, b = 7. Câu lệnh nào sau đây là không hợp lệ trong Ruby?",
                 subject_id: 1,
                 user_id: Random.rand(1..5))
Answer.create!(content: "A+b if true",
               question_id: 10)
Answer.create!(content: "A+b if false",
               question_id: 10)
Answer.create!(content: "True=a+b",
               is_answer: true,
               question_id: 10)
Answer.create!(content: "A + b if a==true",
               question_id: 10)
Answer.create!(content: "Không có lựa chọn nào đúng",
               question_id: 10)

Quiz.create!(max_time: 5,
              status: 0,
              max_score: 10,
              quantity_question: 10,
              subject_id: 1)


