//
//  MassiveClass.swift
//  SonarCubeUIKitTest
//
//  Created by Bojana Vojvodic Beic on 1.7.24..
//

import Foundation

class MassiveClass {
    var name: String
    var age: Int
    var address: String?
    var interests: [String]
    
    init(name: String, age: Int, address: String?, interests: [String]) {
        self.name = name
        self.age = age
        self.address = address
        self.interests = interests
    }
    
    func greet() {
        print("Hello, my name is \(name) and I am \(age) years old.")
    }
    
    func introduceYourself() {
        if let address = address {
            print("I live at \(address).")
        } else {
            print("I don't have a fixed address.")
        }
        
        print("My interests include:")
        for interest in interests {
            print("- \(interest)")
        }
    }
    
    func calculateSum(_ numbers: [Int]) -> Int {
        return numbers.reduce(0, +)
    }
    
    func performComplexTask(a: Int, b: Int, c: Int, d: Int, e: Int) -> String {
        let result = (a * b) + (c / d) - (e % 3)
        return "The result of the complex task is \(result)"
    }
    
    func processString(_ string: String, withOption option: String?) {
        if let option = option {
            print("Processing string '\(string)' with option '\(option)'")
        } else {
            print("Processing string '\(string)'")
        }
    }
    
    func fetchData(completion: @escaping (Result<[String], Error>) -> Void) {
        DispatchQueue.global().async {
            // Simulating asynchronous data fetching
            let data = ["Data 1", "Data 2", "Data 3"]
            DispatchQueue.main.async {
                completion(.success(data))
            }
        }
    }
    
    func updateUIOnMainThread() {
        DispatchQueue.main.async {
            // Simulating UI update on main thread
            print("Updating UI...")
        }
    }
    
    func generateReport() -> String {
        let reportHeader = "Report for \(name)"
        let reportBody = "Age: \(age)\nInterests: \(interests.joined(separator: ", "))\nAddress: \(address ?? "Unknown")"
        return "\(reportHeader)\n\(reportBody)"
    }
    
    deinit {
        print("Deinitializing MassiveClass instance for \(name)")
    }
}


