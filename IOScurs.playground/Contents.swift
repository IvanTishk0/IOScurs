func sortArr(array: [Int], f: (Int, Int) -> Bool) -> [Int] {
    var arr = array
    for i in 0..<arr.count {
        for j in 0..<arr.count-1 {
                    if f(arr[j], arr[j+1]) {
                        // меняем местами
                        let temp = arr[j]
                        arr[j] = arr[j+1]
                        arr[j+1] = temp
                    }
                }
            }
    return arr
}
func sortArr(array: [String], f: (String, String) -> Bool) -> [String] {
    var arr = array
    for i in 0..<arr.count {
        for j in 0..<arr.count-1 {
                    if f(arr[j], arr[j+1]) {
                        // меняем местами
                        let temp = arr[j]
                        arr[j] = arr[j+1]
                        arr[j+1] = temp
                    }
                }
            }
    return arr
}

var arr = [3, 4, 5, 2, 36, 12, 12, 15]
print(sortArr(array: arr, f: {$0 > $1}))
print(sortArr(array: arr, f: {$0 < $1}))
func getName(names: [String], name: String) -> [String] {
    var newNames = names
    newNames.append(name)
    return sortArr(array: newNames, f: {$0.count > $1.count})
}
var names = [String]()
names = getName(names: names, name: "Витя")
names = getName(names: names, name: "Володя")
names = getName(names: names, name: "Валера")
names = getName(names: names, name: "Игорь")

func createDict(names: [String]) -> [Int: [String]] {
    var dict = [Int: [String]]()
    for i in 0..<names.count {
        var arr: [String] = dict[names[i].count] ?? []
        arr.append(names[i])
        dict.updateValue(arr, forKey: names[i].count)
        //dic[names[i].count]? = names[i]
    }
    return dict
}

func getName(dict: [Int: [String]], key: Int) {
    print(dict[key] ?? " ")
}
var dict = createDict(names: names)
getName(dict: dict, key: 6)

var arrInt = [Int]()
var arrString = [String]()
func empty(arrInt: [Int], arrString: [String]) {
    var newArrInt = arrInt
    if arrInt.isEmpty {
        newArrInt.append(4)
        print(newArrInt)
    }
    var newArrString = arrString
    if arrString.isEmpty {
        newArrString.append("Витя")
        print(newArrString)
    }
}

empty(arrInt: arrInt, arrString: arrString)
