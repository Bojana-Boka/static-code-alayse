//
//  ViewController.swift
//  SonarCubeUIKitTest
//
//  Created by Bojana Vojvodic Beic on 28.6.24..
//

import UIKit

class ViewController: UIViewController {
    
    let titleLabel = UILabel()
    let amountField = UITextField()
    let accountNumberField = UITextField()
    let dateLabel = UILabel()
    let datePicker = UIDatePicker()
    let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Code smells start here
        
        // 1. Lack of clear separation of concerns
        setupUI() // This method sets up UI elements
        
        // 2. Massive View Controller issue: View Controller is doing too much
        configureLabelsAndFields()
        
        // 3. Unnecessary force unwrapping
        titleLabel.text = "Płatni promet" // Potential crash if titleLabel is nil
        
        // 4. Inconsistent naming convention
        dateLabel.text = "Datum"
        
        // 5. Violation of Single Responsibility Principle: mixing UI setup with logic
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        
        // 6. Magic numbers: hard-coded values
        amountField.placeholder = "Unesite iznos"
        
        // 7. Poor error handling: no validation for input fields
        
        // 8. Non-descriptive method name
        fetchData()
        
        // Usage example:
        let interests = ["Reading", "Gaming", "Programming"]
        var massiveObject = MassiveClass(name: "John Doe", age: 30, address: "123 Main St", interests: interests)
        massiveObject.greet()
        massiveObject.introduceYourself()
        print("Sum: \(massiveObject.calculateSum([1, 2, 3, 4, 5]))")
        print(massiveObject.performComplexTask(a: 10, b: 5, c: 20, d: 4, e: 7))
        massiveObject.processString("Swift is awesome!", withOption: "Advanced")
        massiveObject.fetchData { result in
            switch result {
            case .success(let data):
                print("Fetched data: \(data)")
            case .failure(let error):
                print("Error fetching data: \(error.localizedDescription)")
            }
        }
        massiveObject.updateUIOnMainThread()
        print(massiveObject.generateReport())
    }
    
    func setupUI() {
        titleLabel.frame = CGRect(x: 20, y: 100, width: 200, height: 30)
        view.addSubview(titleLabel)
        
        amountField.frame = CGRect(x: 20, y: 150, width: 200, height: 30)
        amountField.borderStyle = .roundedRect
        view.addSubview(amountField)
        
        accountNumberField.frame = CGRect(x: 20, y: 200, width: 200, height: 30)
        accountNumberField.borderStyle = .roundedRect
        view.addSubview(accountNumberField)
        
        dateLabel.frame = CGRect(x: 20, y: 250, width: 200, height: 30)
        view.addSubview(dateLabel)
        
        datePicker.frame = CGRect(x: 20, y: 300, width: view.frame.width - 40, height: 200)
        datePicker.datePickerMode = .date
        view.addSubview(datePicker)
        
        nextButton.frame = CGRect(x: 20, y: 520, width: view.frame.width - 40, height: 40)
        nextButton.setTitle("Dalje", for: .normal)
        nextButton.backgroundColor = .blue
        view.addSubview(nextButton)
    }
    
    @objc func nextButtonTapped() {
        // Placeholder method for button tap action
    }
    
    func fetchData() {
        // Placeholder method for fetching data
    }
    
    func configureLabelsAndFields() {
        // Placeholder method for fetching data
    }
    
}

