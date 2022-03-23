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

q = Question.new(content: "Biến bắt đầu bằng hai ký tự @@ trong Ruby là loại biến nào?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "Biến Instance", is_answer: false
q.answers.build content: "Biến Class", is_answer: true
q.answers.build content: "Biến Local", is_answer: false
q.answers.build content: "Biến Global", is_answer: false
q.save

q = Question.new(content: "Lớp cha của lớp String trong Ruby?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "Object", is_answer: false
q.answers.build content: "Basic Object", is_answer: false
q.answers.build content: "Class", is_answer: true
q.answers.build content: "Char", is_answer: false
q.save

q = Question.new(content: "Câu lệnh nào sau đây sử dụng biến Instance?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "Frax = 50", is_answer: false
q.answers.build content: "@@Frax = 50", is_answer: false
q.answers.build content: "$Frax = 50", is_answer: false
q.answers.build content: "@Frax = 50", is_answer: true
q.save

q = Question.new(content: "Giá trị của x trong biểu thức x = 100_000 / 100 ?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "10", is_answer: false
q.answers.build content: "1.0", is_answer: false
q.answers.build content: "1000", is_answer: true
q.answers.build content: "100", is_answer: false
q.save


q = Question.new(content: "Kiểu nào sau đây là kiểu nguyên thủy trong Ruby?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "String", is_answer: false
q.answers.build content: "Integer", is_answer: false
q.answers.build content: "Float", is_answer: false
q.answers.build content: "Char", is_answer: false
q.answers.build content: "Không lựa chọn nào đúng", is_answer: true
q.save

q = Question.new(content: "Trong Ruby, !!nil có nghĩa là?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "Nil", is_answer: false
q.answers.build content: "True", is_answer: false
q.answers.build content: "False", is_answer: true
q.answers.build content: "0", is_answer: false
q.save

q = Question.new(content: "nil.nil? trả về kết quả ra sao?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "Đưa ra một ngoại lệ", is_answer: false
q.answers.build content: "false", is_answer: false
q.answers.build content: "true", is_answer: true
q.answers.build content: "nil", is_answer: false
q.save

q = Question.new(content: "Câu lệnh nào dưới đây sẽ trả về thời gian hiện
                               tại dưới dạng Unix time",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "Time.now.unixtime", is_answer: false
q.answers.build content: "Time.now.to_a", is_answer: false
q.answers.build content: "Time.now.to_i", is_answer: true
q.answers.build content: "Time.now.inspect", is_answer: false
q.save

q = Question.new(content: "Symbols trong Ruby có đặc điểm gì?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "Khả biến", is_answer: false
q.answers.build content: "Bất biến", is_answer: true
q.answers.build content: "Dạng ngắn gọn của string", is_answer: false
q.answers.build content: "Làm khóa cho Hash", is_answer: false
q.save

q = Question.new(content: "A = 5, b = 7. Câu lệnh nào sau đây là không hợp lệ trong Ruby?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "A+b is true", is_answer: false
q.answers.build content: "A+b is false", is_answer: false
q.answers.build content: "True=a+b", is_answer: true
q.answers.build content: "A + b if a==true", is_answer: false
q.answers.build content: "Không có lựa chọn nào đúng", is_answer: false
q.save

q = Question.new(content: "Biến Instance trong Ruby không cần được khai báo?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "Đúng", is_answer: true
q.answers.build content: "Sai", is_answer: false
q.save

q = Question.new(content: "Điều nào sau đây đúng khi nói về Ruby?
                               Hãy chọn các đáp án đúng.",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "Là ngôn ngữ scripting", is_answer: true
q.answers.build content: "Hướng đối tượng", is_answer: true
q.answers.build content: "Không có kiểu nguyên thủy", is_answer: true
q.answers.build content: "Class là superclass của mọi class", is_answer: false
q.answers.build content: "Ruby không có tính đa hình", is_answer: false
q.save

q = Question.new(content: "a = 1, b = 2, x = a ||= b. Giá trị của x?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "1", is_answer: true
q.answers.build content: "2", is_answer: false
q.answers.build content: "false", is_answer: false
q.answers.build content: "nil", is_answer: false
q.save

q = Question.new(content: "_lambda = lambda {puts \"Hello World\"},
                               _lambda.class trả về?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "Lambda < Object", is_answer: true
q.answers.build content: "Proc < Object", is_answer: false
q.answers.build content: "Object", is_answer: false
q.answers.build content: "Block < Object", is_answer: false
q.save


q = Question.new(content: "$val = 20 print \"Sample Text\" if $val.
                               Kết quả của biểu thức là?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "20", is_answer: false
q.answers.build content: "Sample Text", is_answer: true
q.answers.build content: "No output", is_answer: false
q.answers.build content: "Syntax error", is_answer: false
q.save

q = Question.new(content: "Cách nào sau đây là cách đúng để định nghĩa một
                               phương thức có số lượng tham số tùy chọn?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "20", is_answer: false
q.answers.build content: "Sample Text", is_answer: true
q.answers.build content: "No output", is_answer: false
q.answers.build content: "Syntax error", is_answer: false
q.save

q = Question.new(content: "Giá trị nào được trả về khi bạn truyền một khóa
                               không tồn tại trong một hash?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "nil", is_answer: true
q.answers.build content: "0", is_answer: false
q.answers.build content: "Any errors", is_answer: false
q.save

q = Question.new(content: "Biểu thức nào sau đây không trả về [\"a\", \"b\"]?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "[\"a\"] << [\"b\"]", is_answer: true
q.answers.build content: "%w{a b}", is_answer: false
q.answers.build content: "[\"a\"] << \"b\"", is_answer: false
q.answers.build content: "[\"a\"] + [\"b\"]", is_answer: false
q.answers.build content: "[\"a\"].push(\"b\")", is_answer: false
q.save

q = Question.new(content: "a = 3_1_4_1_5_9_2_6, puts a trả về kết quả?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "3_1_4_1_5_9_2_6", is_answer: false
q.answers.build content: "3 1 4 1 5 9 2 6", is_answer: false
q.answers.build content: "31415926", is_answer: true
q.answers.build content: "Không có đáp án nào đúng", is_answer: false
q.save

q = Question.new(content: "colors = {:red => \"FF0000\", :green => \"00FF00\",
                                         :blue => \"0000FF\"}. Câu lệnh nào sau đây
                                         trả về 00FF00?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "colors.value[\"green\"]", is_answer: false
q.answers.build content: "colors.green", is_answer: false
q.answers.build content: "colors[:green]", is_answer: true
q.answers.build content: "colors.hash_key(:green)", is_answer: false
q.save


q = Question.new(content: "Để kiểm tra một phương thức thuộc một lớp hay không ta sử dụng?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "get_method?", is_answer: false
q.answers.build content: "respond_to?", is_answer: false
q.answers.build content: "instance_of?", is_answer: true
q.answers.build content: "kind_of?", is_answer: false
q.answers.build content: "method_present?", is_answer: false
q.save

q = Question.new(content: "Câu lệnh nào sau đây chứa một symbol?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "H={:bird=>'fly', :horse=>'gallop', :snake=>'snake'}", is_answer: false
q.answers.build content: ":snake.to-s", is_answer: true
q.answers.build content: "H={bird:=>'fly', horse:=>'gallop', snake:=>'snake'}", is_answer: false
q.answers.build content: "Snake::to_s?", is_answer: false
q.answers.build content: "Không đáp án nào đúng", is_answer: false
q.save

q = Question.new(content: "x = [1, 1, 2, 3, 5]; y = [2, 4, 16]; z = x | y.
                                Giá trị của z là?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "[1, 1, 2, 3, 5, 2, 4, 16]", is_answer: false
q.answers.build content: "[2, 4, 16, 1, 3, 5]", is_answer: true
q.answers.build content: "[1, 2, 3, 5, 4, 16]", is_answer: false
q.answers.build content: "[1, 3, 5, 4, 16]", is_answer: false
q.answers.build content: "[1, 1, 3, 5]", is_answer: false
q.save

q = Question.new(content: "Trong Ruby, nil tương đương với?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "False", is_answer: true
q.answers.build content: "Một đối tượng thực", is_answer: false
q.answers.build content: "Một phương thức", is_answer: false
q.answers.build content: "Bằng với 0", is_answer: false
q.save

q = Question.new(content: "Kết quả của biểu thức: x = \"A\" + \"B\" puts x
                                                      y = \"C\" << \"D\" puts là?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "AB CD", is_answer: true
q.answers.build content: "AB C", is_answer: false
q.answers.build content: "AB D", is_answer: false
q.answers.build content: "AB DC", is_answer: false
q.save

q = Question.new(content: "Truyền một đối tượng lambda vào làm đối số cho
                               phương thức, kích hoạt đối tượng này thông qua?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "Phương thức to_proc", is_answer: false
q.answers.build content: "Câu lệnh yield", is_answer: false
q.answers.build content: "Phương thức to_block", is_answer: false
q.answers.build content: "Dấu ngoặc ([])", is_answer: false
q.answers.build content: "Phương thức call", is_answer: true
q.save

q = Question.new(content: "Chỉ số đầu của mảng trong Ruby?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "1", is_answer: false
q.answers.build content: "0", is_answer: true
q.answers.build content: "-1", is_answer: false
q.answers.build content: "Không có đáp án đúng", is_answer: false
q.save

q = Question.new(content: "Kích thước mảng trong Ruby là bao nhiêu?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "10", is_answer: false
q.answers.build content: "Ruby không có kích thước mảng cố định", is_answer: true
q.answers.build content: "Count", is_answer: false
q.answers.build content: "Không có đáp án đúng", is_answer: false
q.save

q = Question.new(content: "Giá trị của biểu thức y = 2 ** 3?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "6", is_answer: false
q.answers.build content: "8", is_answer: true
q.answers.build content: "12", is_answer: false
q.save

q = Question.new(content: "-> (a) {p a}[\"Hello World\"]?",
                     subject_id: 1,
                     user_id: Random.rand(1..5))
q.answers.build content: "true", is_answer: false
q.answers.build content: "false", is_answer: true
q.save

q = Question.new(content: "Đăng ký kho truy cập từ xa?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git remote repox", is_answer: false
q.answers.build content: "git remote add repox", is_answer: true
q.answers.build content: "git remote repo repox", is_answer: false
q.answers.build content: "git remote register repox", is_answer: false
q.save

q = Question.new(content: "Xem trạng thái của kho lưu trữ?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git show", is_answer: false
q.answers.build content: "git view", is_answer: false
q.answers.build content: "git summary", is_answer: false
q.answers.build content: "git status", is_answer: true
q.save

q = Question.new(content: "Thay đổi tên tệp?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git mv foo.txt bar.txt", is_answer: true
q.answers.build content: "git rename foo.txt bar.txt", is_answer: false
q.answers.build content: "git change foo.txt bar.txt", is_answer: false
q.answers.build content: "git log foo.txt bar.txt", is_answer: false
q.save

q = Question.new(content: "Sửa commit?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git commit --recommit", is_answer: false
q.answers.build content: "git commit --amend", is_answer: true
q.answers.build content: "git commit --append", is_answer: false
q.answers.build content: "git commit --prepend", is_answer: false
q.save

q = Question.new(content: "Hển thị nhật ký commit?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git commitlog", is_answer: false
q.answers.build content: "git reflog", is_answer: false
q.answers.build content: "git log", is_answer: true
q.answers.build content: "git filelog", is_answer: false
q.save

q = Question.new(content: "Xem nội dung thay đổi?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git show", is_answer: true
q.answers.build content: "git view", is_answer: false
q.answers.build content: "git summary", is_answer: false
q.answers.build content: "git status", is_answer: false
q.save

q = Question.new(content: "Xem danh sách các nhánh?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git branche list", is_answer: false
q.answers.build content: "git branch list", is_answer: false
q.answers.build content: "git branches", is_answer: false
q.answers.build content: "git branch", is_answer: true
q.save

q = Question.new(content: "Hiển thị trợ giúp?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git help", is_answer: true
q.answers.build content: "git show", is_answer: false
q.answers.build content: "git log", is_answer: false
q.answers.build content: "git reflog", is_answer: false
q.save

q = Question.new(content: "Kiểm tra thiết lập?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git config -l", is_answer: true
q.answers.build content: "git config -c", is_answer: false
q.answers.build content: "git config -s", is_answer: false
q.answers.build content: "git config", is_answer: false
q.save

q = Question.new(content: "Đưa nội dung của tệp từ stage trở về HEAD?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git reset --soft", is_answer: false
q.answers.build content: "git reset", is_answer: true
q.answers.build content: "git reset --normal", is_answer: false
q.answers.build content: "git reset --hard", is_answer: false
q.save

q = Question.new(content: "Khi đang ở nhánh develop, ghép nhánh br1 vào
                               nhánh develop?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git merge br1", is_answer: true
q.answers.build content: "git merge develop", is_answer: false
q.answers.build content: "git merge develop br1", is_answer: false
q.answers.build content: "git merge br1 develop", is_answer: false
q.save

q = Question.new(content: "Hiển thị nhật ký trên một dòng?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git log --one", is_answer: false
q.answers.build content: "git log --oneline", is_answer: true
q.answers.build content: "git log -l 1", is_answer: false
q.answers.build content: "git log --line 1", is_answer: false
q.save

q = Question.new(content: "Tạo và chuyển đến nhánh br1?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git checkout br1", is_answer: false
q.answers.build content: "git branch br1", is_answer: false
q.answers.build content: "git branch -c br1", is_answer: false
q.answers.build content: "git checkout -b br1", is_answer: true
q.save

q = Question.new(content: "Xem sự khác biệt giữa HEAD và stage?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git diff", is_answer: false
q.answers.build content: "git diff HEAD", is_answer: false
q.answers.build content: "git diff --staged", is_answer: true
q.answers.build content: "git diff STAGE", is_answer: false
q.save

q = Question.new(content: "Xem sự khác biệt giữa các commit?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git diff --c1 a3fbde --c2 d6aeba", is_answer: false
q.answers.build content: "git diff a3fbde d6aeba", is_answer: true
q.answers.build content: "git diff --commit a3fbde d6aeba", is_answer: false
q.answers.build content: "git diff a3fbde --with d6eaba", is_answer: false
q.save

q = Question.new(content: "Xem nhật ký thao tác?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git log", is_answer: false
q.answers.build content: "git oplog", is_answer: false
q.answers.build content: "git log --operation", is_answer: false
q.answers.build content: "git reflog", is_answer: true
q.save

q = Question.new(content: "Chuyển đến nhánh khác?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git checkout -b br1", is_answer: false
q.answers.build content: "git branch br1", is_answer: false
q.answers.build content: "git checkout br1", is_answer: true
q.answers.build content: "git branch -c br1", is_answer: false
q.save

q = Question.new(content: "Xóa tệp?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git delete foo.txt", is_answer: false
q.answers.build content: "git destroy foo.txt", is_answer: false
q.answers.build content: "git rm foo.txt", is_answer: true
q.answers.build content: "git drop foo.txt", is_answer: false
q.save

q = Question.new(content: "Chỉ định tệp rồi hiển thị nhật ký?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git log --file foo.txt", is_answer: false
q.answers.build content: "git log -f foo.txt", is_answer: false
q.answers.build content: "git log foo.txt", is_answer: true
q.answers.build content: "git log --only-file foo.txt", is_answer: false
q.save

q = Question.new(content: "Commit tệp staging?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git commit", is_answer: true
q.answers.build content: "git add -c", is_answer: false
q.answers.build content: "git add --commit", is_answer: false
q.answers.build content: "git commit --staged", is_answer: false
q.save

q = Question.new(content: "Xem sự khác biệt giữa nhánh đang làm việc và HEAD?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git diff HEAD", is_answer: true
q.answers.build content: "git diff --staged", is_answer: false
q.answers.build content: "git diff", is_answer: false
q.answers.build content: "git diff TREE", is_answer: false
q.save

q = Question.new(content: "Xem sự khác biệt giữa nhánh đang làm việc và stage?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git diff", is_answer: true
q.answers.build content: "git diff --staged", is_answer: false
q.answers.build content: "git diff HEAD", is_answer: false
q.answers.build content: "git diff STAGE", is_answer: false
q.save

q = Question.new(content: "Chỉ staging foo.txt?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git add . foo.txt", is_answer: false
q.answers.build content: "git add foo.txt", is_answer: true
q.answers.build content: "git add foo.txt .", is_answer: false
q.answers.build content: "git add --only-file foo.txt", is_answer: false
q.save

q = Question.new(content: "Xóa tệp khỏi stage?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git rm foo.txt", is_answer: false
q.answers.build content: "git delete foo.txt", is_answer: false
q.answers.build content: "git delete --cached foo.txt", is_answer: false
q.answers.build content: "git rm --cached foo.txt", is_answer: true
q.save

q = Question.new(content: "Xóa nhánh work1?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git branch -d work1", is_answer: true
q.answers.build content: "git branch delete work1", is_answer: false
q.answers.build content: "git branch destroy work1", is_answer: false
q.answers.build content: "git branch drop work1", is_answer: false
q.save

q = Question.new(content: "Khi đang ở nhánh work1, rebase nhánh work1 theo
                               HEAD của nhánh develop?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git rebase work1 develop", is_answer: false
q.answers.build content: "git rebase develop work1", is_answer: false
q.answers.build content: "git rebase develop", is_answer: true
q.answers.build content: "git rebase work1", is_answer: false
q.save

q = Question.new(content: "Xóa nhánh develop trên remote repo?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git push", is_answer: false
q.answers.build content: "git view", is_answer: false
q.answers.build content: "git summary", is_answer: false
q.answers.build content: "git status", is_answer: true
q.save

q = Question.new(content: "Gộp n commit lại với nhau?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git rebase -i HEAD~n", is_answer: true
q.answers.build content: "git rebase -c HEAD~n", is_answer: false
q.answers.build content: "git rebase -t HEAD~n", is_answer: false
q.answers.build content: "git rebase ~d HEAD~n", is_answer: false
q.save

q = Question.new(content: "Thay đổi tên remote?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git remote change old_name new_name", is_answer: false
q.answers.build content: "git remote update old_name new_name", is_answer: false
q.answers.build content: "git remote rename old_name new_name", is_answer: true
q.save

q = Question.new(content: "Kéo nhánh master từ remote repo và merge với
                               branch hiện tại?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git push origin master", is_answer: false
q.answers.build content: "git fetch origin master", is_answer: false
q.answers.build content: "git remote origin master", is_answer: false
q.answers.build content: "git pull origin master", is_answer: true
q.save

q = Question.new(content: "Liệt kê toàn bộ branch (local + remote repo)?",
                     subject_id: 4,
                     user_id: Random.rand(1..5))
q.answers.build content: "git branch -a", is_answer: true
q.answers.build content: "git branch --list-all", is_answer: false
q.answers.build content: "git branch --show", is_answer: false
q.answers.build content: "git branch", is_answer: false
q.save

s = Subject.first
s.quizzes.build max_time: 15, status: 0, max_score: 20, quantity_question: 20
s.save

subjects = Subject.all

5.times do
  subjects.each do |subject|
    mt = Random.new.rand(15..30)
    st = Random.new.rand(0..1)
    ms = Random.new.rand(15..30)
    qq = Random.new.rand(15..20)
    subject.quizzes.build max_time: mt, status: st, max_score: ms, quantity_question: qq
    subject.save
  end
end

trainees = User.where(role: 0).shuffle
quizzes = Quiz.pluck(:id).shuffle

20.times do
  trainees.each do |trainee|
    score_random = Random.new.rand(15..30)
    trainee.exams.build start_time: (DateTime.now-0.1),
      end_time: DateTime.now,
      total_score: score_random, quiz_id: quizzes.shuffle.first
    trainee.save
  end
end

exams = Exam.all
exams.each do |exam|
  subject_id = exam.quiz.subject_id
  quantity_question = exam.quiz.quantity_question
  questions = Question.where(subject_id: subject_id).shuffle.take(quantity_question)

  questions.each do |q|
    answer_choice = Random.new.rand(1..4)
    exam.exam_details.build question_id: q.id, answer_choice: answer_choice
  end

  exam.save!
end

