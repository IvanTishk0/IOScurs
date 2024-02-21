let monthDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

for i in 0..<monthDays.count {
    print(monthDays[i])
}
print("\n")
let monthName = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]

for i in 0..<monthName.count {
    print("\(monthName[i]) - \(monthDays[i])")
}
print("\n")
let tuple = [("Январь", 31), ("Февраль", 28), ("Март", 31), ("Апрель", 30), ("Май", 31), ("Июнь", 30), ("Июль", 31), ("Август", 31), ("Сентябрь", 30), ("Октябрь", 31), ("Ноябрь", 30), ("Декабрь", 31)]

for (name, days) in tuple {
    print("\(name) - \(days)")
}

print("\n")
for i in (0..<monthName.count).reversed() {
    print("\(monthName[i]) - \(monthDays[i])")
}

let day = 17
let month = "Март"
var sum: Int = 0
for (name, days) in tuple {
    if name != month {
        sum += days
    } else {
        sum += days - day
        break
    }
}
print("От начала года до \(day) \(month) прошло \(sum) дней(дня)")
