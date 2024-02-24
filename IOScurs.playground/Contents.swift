class human {
    var age: Int
    var prof: String
    init(age: Int, prof: String) {
        self.age = age
        self.prof = prof
    }
}

class male: human {
}

class female: human {
}

class house {
    var width: Int
    var heigth: Int
    
    init(width: Int, heigth: Int) {
        self.width = width
        self.heigth = heigth
    }
    
    func create() {
        print(self.width * self.heigth)
    }
    
    func destroy() {
        print("Дом уничтожен")
    }
}

class student {
    var name: String
    var age: Int
    var graduate: Int
    init(name: String, age: Int, graduate: Int) {
        self.name = name
        self.age = age
        self.graduate = graduate
    }
}

class sortClass {
    var students = [student]()
    init(students: [student] = [student]()) {
        self.students = students
    }
    
    
    func srt(f: (student, student) -> Bool) {
        for i in 0..<self.students.count {
                for j in 0..<self.students.count-1 {
                    if f(self.students[j], self.students[j+1]) {
                            let temp = self.students[j]
                            self.students[j] = self.students[j+1]
                            self.students[j+1] = temp
                        }
                }
            }
    }
    
    func printStudents() {
        for student in students {
            print(student.name)
        }
    }
}

var students = [student(name: "Витя", age: 19, graduate: 3), student(name: "Володя", age: 20, graduate: 4), student(name: "Олег", age: 18, graduate: 5)]

var Sclass = sortClass(students: students)
Sclass.srt(f: {
    $0.age > $1.age
})
Sclass.printStudents()
print("\n")
Sclass.srt(f: {
    $0.name.count < $1.name.count
})
Sclass.printStudents()
print("\n")

enum cardSuits: String {
    case hearts = "Червовый"
    case spades = "Пиковый"
    case diamonds = "Бубновый"
    case clubs = "Трифовый"
}

enum cards: Int {
    case two = 2
    case three = 3
    case four = 4
    case five = 5
    case six = 6
    case seven = 7
    case eight = 8
    case nine = 9
    case ten = 10
    case jack = 11
    case queen = 12
    case king = 13
    case ace = 14
}
enum combinations: String {
    case comb0 = "Нет комбинации"
    case comb1 = "Рояль-флеш"
    case comb2 = "Стрит-флеш"
    case comb3 = "Каре"
    case comb4 = "Фул-хаус"
}

class card {
    var cardSuit: cardSuits
    var cardNum: cards
    init(cardSuit: cardSuits, cardNum: cards) {
        self.cardSuit = cardSuit
        self.cardNum = cardNum
    }
}

class distribution {
    var combination: combinations
    var distributionCards = [card]()
    init(distributionCards: [card] = [card]()) {
        self.combination = .comb0
        self.distributionCards = distributionCards
    }
    func checkComb() {
        var countsNum = [Int: Int]()
        var countsSuit = [String: Int]()
        for distributionCard in distributionCards {
            countsNum.updateValue((countsNum[distributionCard.cardNum.rawValue] ?? 0) + 1, forKey: distributionCard.cardNum.rawValue)
            countsSuit.updateValue((countsSuit[distributionCard.cardSuit.rawValue] ?? 0) + 1, forKey: distributionCard.cardSuit.rawValue)
        }
        var valuesCard = [Int]()
        var keys = [Int]()
        for (key, value) in countsNum {
            valuesCard.append(value)
            keys.append(key)
        }
        keys.sort()
        var valuesSuit = [Int]()
        for (key, value) in countsSuit {
            valuesSuit.append(value)
        }
        if (valuesCard.contains(3)) && (valuesCard.contains(2)) {
            combination = .comb4
        }
        if valuesCard.contains(4) {
            combination = .comb3
        }
        if valuesSuit.contains(5) {
            var key = 0
            for i in 0..<keys.count-1 {
                if keys[i] + 1 == keys[i+1] {
                    key += 1
                }
            }
            if key == 4 {
                combination = .comb2
                print(distributionCards[0].cardSuit.rawValue)
                if keys[0] == 10 {
                    combination = .comb1
                }
            }
        }
        print(combination.rawValue)
    }
}

var comb = distribution(distributionCards: [
                                 card(cardSuit: cardSuits.clubs, cardNum: cards.ten),
                                 card(cardSuit: cardSuits.clubs, cardNum: cards.jack),
                                 card(cardSuit: cardSuits.clubs, cardNum: cards.queen),
                                 card(cardSuit: cardSuits.clubs, cardNum: cards.king),
                                 card(cardSuit: cardSuits.clubs, cardNum: cards.ace)])
comb.checkComb()
