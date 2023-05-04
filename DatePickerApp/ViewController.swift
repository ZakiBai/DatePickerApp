//
//  ViewController.swift
//  DatePickerApp
//
//  Created by Zaki on 04.05.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    private var days = ""
    
    @IBAction func settedDatePicker(_ sender: UIDatePicker) {
        let range = sender.date ..< Date.now
        days = range.formatted(.components(style: .wide, fields: [.day]))
        
    }
    
    @IBAction func resultButtonTapped() {
        resultLabel.text = "Ты наслаждаешься жизнью уже \(days) "
    }
    
}

