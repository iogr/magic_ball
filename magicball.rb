# Magic 8 ball. Случайный ответ на сакральный вопрос в специальном окошке.
# Задача: написать программу, которая реализует поведение игрушки Волшебный шар.

# Здороваемся
greetings = [
  "Hi. What's the question?",
  "How's it going? What's the question?",
  "Well, hello! Magic ball is talking. What's the question?",
  "How have you bee. What's the question?",
  "Long-time no see. What's the question?",
  "It's been a while. What's the question?"
]

#Считываем responses.txt - файл с ответами
answers = File.readlines("#{__dir__}/responses.txt", chomp: true)

#Удаляем пустые строки
answers.delete_if { |h| h == "" }

#Проводим череду нехитрых действий
puts `clear`
puts greetings.sample
puts
sleep 2
puts '... wait a second ...'
sleep 2
puts "●  #{answers.sample}"
puts
