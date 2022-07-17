//
//  ViewController.swift
//  Lesson2_toDo
//
//  Created by Utilisateur invité on 16/06/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var toDoTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func clear(_ sender: Any) {
        mainLabel.text = ""
        textField.text = ""
        toDoTextView.text = ""
    }
}
// MARK: - TextFieldDelegate

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        mainLabel.text! = textField.text ?? ""
        toDoTextView.text += (mainLabel.text ?? "") + "\n"
        textField.text = ""
        return true
    }
}




	
