
// ============================
// 1) Создай кортеж для двух человек с одинаковыми типами данных и параметрами.

let firstMan = (age: 20, name: "Ivan", surname: "Ivanov")
let secondMan = (age: 30, name: "Alex", surname: "Aleksandrov")
print(firstMan.0, firstMan.1, firstMan.2)
print(secondMan.age, secondMan.name, secondMan.surname)

// ============================
// 2) Создай массив «дни в месяцах» (12 элементов содержащих количество дней в соответствующем месяце). Используя цикл for и этот массив:
// выведи количество дней в каждом месяце
// используй еще один массив с именами месяцев чтобы вывести название месяца + количество дней
// сделай тоже самое, но используя массив кортежей с параметрами (имя месяца, количество дней)
//сделай тоже самое, только выведи дни в обратном порядке (порядок в исходном массиве не меняется)
// для произвольно выбранной даты (месяц и день) посчитай количество дней до конца года

let daysInMonth = [31,28,31,30,31,30,31,31,30,31,30,31]
let namesOfMonth = ["jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct","nov", "dec"]

for item in daysInMonth {
    print(item)
}

var index = 0
for item in daysInMonth {
    print(namesOfMonth[index], item)
    index = index + 1
}


var dayInMonthNew = [(namesOfMonth[0], daysInMonth[0])]
for index in 1...11 {
    dayInMonthNew.append((namesOfMonth[index], daysInMonth[index]))
}
print(dayInMonthNew)

// ============================
// Создай словарь, как журнал студентов, где имя и фамилия студента это ключ, а оценка за экзамен — значение.
//Повысь студенту оценку за экзамен
//Если оценка положительная (4 или 5) или удовлетворительная (3), то выведи сообщение с поздравлением, отрицательная (1, 2) - отправь на пересдачу
//Добавь еще несколько студентов — это будут новые одногруппники!
//Удали одного студента — он отчислен
//Посчитай средний балл всей группы по итогам экзамена.

var journal: [String: Int] = [
    "Mark Cucer": 5,
    "Ivan Ivanov": 3,
    "Alex Aleksandrov": 4,
    "Fedor Sumkin": 1
]

journal["Fedor Sumkin"] = 2

for item in journal {
    (item.value > 2) ? print(item.key + " Поздравляю, вы прошли экзамен"): print(item.key + " Вам на пересдачу")
}
journal["Nova Ivanova"] = 5
journal["Galina Genadevna"] = 4
journal.removeValue(forKey: "Fedor Sumkin")
 
var sumScore = 0
for item in journal {
    sumScore = sumScore + item.value
}
let avgScore = sumScore / journal.count
print(avgScore)

