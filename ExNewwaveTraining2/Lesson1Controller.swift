//
//  Lesson1Controller.swift
//  ExNewwaveTraining2
//
//  Created by Nguyễn Duy Hùng on 04/10/2021.
//

import UIKit

class Lesson1Controller: UIViewController {
    
    @IBOutlet weak var tfInputNumber: UITextField!
    @IBOutlet weak var tvShowResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    /// Random number and check number
    @IBAction func btnGetNumber(_ sender: UIButton) {
        let randomNumber = Int.random(in: 0..<100)
        if((tfInputNumber?.text) != nil){
            let parseNumber = Int(tfInputNumber?.text ?? "0") ?? 0
            if(parseNumber == randomNumber){
                showDialog(message: "Congratulation !!")
            }else if (parseNumber < randomNumber){
                showDialog(message: "Smaller than result !!")
            } else if (parseNumber > randomNumber){
                showDialog(message: "Bigger than result !!")
            } else {
                showDialog(message: "No hope")
            }
        }
        self.tvShowResult.text = String("Result: \(randomNumber)")
    }
    
    /// Show dialog view
    func showDialog (message:String){
        let alert = UIAlertController(title: "Alert", message: message , preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}
