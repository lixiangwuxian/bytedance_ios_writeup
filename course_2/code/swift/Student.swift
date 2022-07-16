//Student.swift
class Student {
    var name: String
    var major: String
    var age: Int
    init(name: String, major: String, age: Int) {
        self.name = name
        self.major = major
        self.age = age
    }
    study(time: float) {
        print("This student has studying for \(time) hours.")
    }
}