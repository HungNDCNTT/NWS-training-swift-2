//
//  Lesson2Controller.swift
//  ExNewwaveTraining2
//
//  Created by Nguyễn Duy Hùng on 06/10/2021.
//

import UIKit

class Lesson2Controller: UIViewController {

    @IBOutlet weak var imvAvt: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        }

    @IBAction func btnGetImage(_ sender: UIButton) {
        let image1 = UIImage(named: "pica")
        let image2 = UIImage(named: "picb")
        let image3 = UIImage(named: "picc")
        let image4 = UIImage(named: "picd")
        let lsImages = [image1,image2,image3,image4]
        var result : UIImage = UIImage()
        if let randomImage = lsImages.randomElement(){
            result = randomImage ?? image1! as UIImage
        }
        imvAvt.image = result
    }
    
  

}
