//
//  ViewController.swift
//  ExNewwaveTraining2
//
//  Created by Nguyễn Duy Hùng on 04/10/2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    @IBAction func onLession1Tap(_ sender: UIButton) {
        if let vc = UIStoryboard.init(name: "Lession1Controller", bundle: Bundle.main).instantiateViewController(withIdentifier: "Lession1Controller") as? Lesson1Controller {
            self.navigationController?.pushViewController(vc, animated: true) }
    }
    
    @IBAction func onLession2Tap(_ sender: UIButton) {
        if let vc = UIStoryboard.init(name: "Lession2Controller", bundle: Bundle.main).instantiateViewController(withIdentifier: "Lession2Controller") as? Lesson2Controller {
            self.navigationController?.pushViewController(vc, animated: true) }
    }
    @IBAction func onLession3Tap(_ sender: Any) {
        if let vc = UIStoryboard.init(name: "Lession3Controller", bundle: Bundle.main).instantiateViewController(withIdentifier: "Lession3Controller") as? Lession3Controller {
            self.navigationController?.pushViewController(vc, animated: true) }
    }
}


