//
//  ViewController.swift
//  Tour guide Application
//
//  Created by Donia Elshenawy on 17/02/2022.
//

import UIKit

class ViewController: UIViewController {

    var placesArray : [Places] = []
    var index = 0
    var previousIndex : Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         var photo : UIImage
         Photo : imageLiteral
         */
        let firstPlace = Places(photo: #imageLiteral(resourceName: "pyramids-egypt") ,description: "The Egyptian pyramids are ancient masonry structures located in Egypt. Sources cite at least 118 identified Egyptian pyramids. Most were built as tombs for the country's pharaohs and their consorts during the Old and Middle Kingdom periods.")
        
     let secondPlace = Places(photo: #imageLiteral(resourceName: "cairo tower"), description: "he Cairo Tower is a free-standing concrete tower in Cairo, Egypt. At 187 m, it is the tallest structure in Egypt and North Africa. It was the tallest structure in Africa for ten years until 1971, when it was surpassed by Hillbrow Tower in South Africa.")
        
        let thirdPlace = Places(photo: #imageLiteral(resourceName: "Mohamed ali mosque"), description: "The Great Mosque of Muhammad Ali Pasha or Alabaster Mosque is a mosque situated in the Citadel of Cairo in Egypt and was commissioned by Muhammad Ali Pasha between 1830 and 1848.")
        
        let fourthPlace = Places(photo: #imageLiteral(resourceName: "Egyptian-Museum-"), description: "The Egyptian Museum  is the oldest archaeological museum in the Middle East, and houses the largest collection of Pharaonic antiquities in the world. The museum displays an extensive collection spanning from the Predynastic Period to the Greco-Roman Era.")
        
        placesArray = [firstPlace, secondPlace, thirdPlace, fourthPlace]
        
        descriptionLabel.text = placesArray[index].description
        imageView.image = placesArray[index].photo
        
    }

    @IBAction func previousBtn(_ sender: UIButton) {
        index -= 1
        if(index < 0 ){
            index += placesArray.count
        }
        descriptionLabel.text = placesArray[index].description
        imageView.image = placesArray[index].photo
    }
    

    @IBAction func nextBtn(_ sender: UIButton) {
        index += 1
        if(index >= placesArray.count){
           index = 0
        }
        descriptionLabel.text = placesArray[index].description
        imageView.image = placesArray[index].photo
    }
}

