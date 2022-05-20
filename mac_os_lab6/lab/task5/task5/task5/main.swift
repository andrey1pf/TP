//
//  main.swift
//  task5
//
//  Created by Andrey Goncharenko on 16.04.22.
//

import Foundation

var Soldier = Dictionary<String, String>()

var Division: [String: Int] = ["PVO" : 320, "Marpehi" : 287, "Pehota" : 890]

print("Сколько записей хотите записать в Soldier: ")

let countElement = Int(readLine(strippingNewline: true)!)!

for i in 1...countElement{
    print("Введите имя")
    let keysNew = readLine()
    print("Введите звание")
    let countSoldierNew = readLine()
    Soldier[keysNew!] = countSoldierNew
}

print("Получившийся словарь")
for (name, range) in Soldier {
    print(name, range)
}

let a = Division.count
let b = Soldier.count


print("Кол-во элементов в словаре Division: ", a)
print("Кол-во элементов в словаре Soldier: ", b)

print("Какой словарь хотите редактировать?")

let answer = readLine()

if(answer == "Division"){
    print("Введи ключ: ")

    let key = readLine()

    for (nameSoldiers, numberSoldiers) in Division {
        if(nameSoldiers == key){
            print(nameSoldiers, numberSoldiers)
        }
    }

    print("Все элементы словаря Division")

    for (nameSoldiers, numberSoldiers) in Division {
        print(nameSoldiers, numberSoldiers)
    }

    print("Введите новые значения: ")

    let keys = readLine()
    let countSoldier = Int(readLine(strippingNewline: true)!)!

    Division[keys!] = countSoldier

    print("Все элементы словаря Division после добавлени элементов")
    for (nameSoldiers, numberSoldiers) in Division {
        print(nameSoldiers, numberSoldiers)
    }

    print("Введите модифицированные данные")
    let keys1 = readLine()
    let countSoldier1 = Int(readLine(strippingNewline: true)!)!
    Division[keys1!] = countSoldier1
    for (nameSoldiers, numberSoldiers) in Division {
        print(nameSoldiers, numberSoldiers)
    }

    print("Сортированный словарь")
    let array = Division.sorted { $0.key < $1.key }
    print(array)

    print("Удаление элемента: ")
    let deletekeys1 = readLine()
    Division.removeValue(forKey: deletekeys1!)
    for (nameSoldiers, numberSoldiers) in Division {
        print(nameSoldiers, numberSoldiers)
    }

    print("Удаление словаря: ")
    Division.removeAll()
    if(Division.isEmpty){
        print("Все элементы удалены")
    }
    else{
        print("Ошибка")
    }
}
else if(answer == "Soldier"){
    print("Введи ключ: ")

    let keySol = readLine()

    for (nameSol, rang) in Soldier {
        if(nameSol == keySol){
            print(nameSol, rang)
        }
    }

    print("Все элементы словаря Soldier")

    for (nameSol, rang) in Soldier {
        print(nameSol, rang)
    }

    print("Введите новые значения: ")

    let keysSol = readLine()
    let rang = readLine()

    Soldier[keysSol!] = rang

    print("Все элементы словаря Soldier после добавлени элементов")
    for (nameSol, rang) in Soldier {
        print(nameSol, rang)
    }

    print("Введите модифицированные данные")
    let keys1Soldier = readLine()
    let rang1Sol = readLine()
    Soldier[keys1Soldier!] = rang1Sol
    for (nameSol, rang1Sol) in Soldier {
        print(nameSol, rang1Sol)
    }

    print("Сортированный словарь")
    let arraySol = Soldier.sorted { $0.key < $1.key }
    print(arraySol)

    print("Удаление элемента: ")
    let deletekeys1Sol = readLine()
    Soldier.removeValue(forKey: deletekeys1Sol!)
    for (nameSol, rang) in Soldier {
        print(nameSol, rang)
    }

    print("Удаление словаря: ")
    Soldier.removeAll()
    if(Soldier.isEmpty){
        print("Все элементы удалены")
    }
    else{
        print("Ошибка")
    }
}
