//
//  main.swift
//  task3
//
//  Created by Andrey Goncharenko on 15.04.22.
//

import Foundation

print("Введите число: ")

let n = 123421

var a, b : Int
a = n / 1000
b = n % 1000

a = a/100 + a % 10 + (a%100-a%10)/10
b = b/100 + b % 10 + (b%100-b%10)/10

if(a == b){
    print("Число счастливое")
}
else{
    print("Число не счастливое")
}
