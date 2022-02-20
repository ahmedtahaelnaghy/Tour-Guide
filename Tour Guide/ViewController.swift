//
//  ViewController.swift
//  Tour Guide
//
//  Created by Ahmed Taha on 15/02/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var placeImg: UIImageView!
    @IBOutlet weak var DescriptionLbl: UILabel!
    @IBOutlet weak var placeNameLbl: UILabel!
    
    var placesArray : [Details] = []
    var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        let firstPlaceDescription = Details(placeName: "Cairo Tower", image: "cairo tower", description: "The Cairo Tower is a free-standing concrete tower in Cairo, Egypt. At 187 m, it is the tallest structure in Egypt and North Africa. It was the tallest structure in Africa for ten years until 1971, when it was surpassed by Hillbrow Tower in South Africa.")
       
        let secondPlaceDescription = Details(placeName: "Egyptian Pyramids", image: "pyramids-egypt", description: "The Egyptian pyramids are ancient masonry structures located in Egypt. Sources cite at least 118 identified Egyptian pyramids. Most were built as tombs for the country's pharaohs and their consorts during the Old and Middle Kingdom periods.")
        
        let thirdPlaceDescription = Details(placeName: "Egyptian Museum", image: "Egyptian-Museum-", description: "The Egyptian Museum  is the oldest archaeological museum in the Middle East, and houses the largest collection of Pharaonic antiquities in the world. The museum displays an extensive collection spanning from the Predynastic Period to the Greco-Roman Era.")
        
        let fourthPlaceDescription = Details(placeName: "Muhammad Ali Pasha Mosque", image: "Mohamed ali mosque", description: "The Great Mosque of Muhammad Ali Pasha or Alabaster Mosque is a mosque situated in the Citadel of Cairo in Egypt and was commissioned by Muhammad Ali Pasha between 1830 and 1848.")
        
        placesArray = [firstPlaceDescription, secondPlaceDescription, thirdPlaceDescription, fourthPlaceDescription]
        
        placeNameLbl.text = placesArray[counter].placeName
        placeImg.image = UIImage(named: placesArray[counter].image)
        DescriptionLbl.text = placesArray[counter].description
        
    }
    
    // When you want to reach the next tourist attraction, you'll click on next button
    @IBAction func nextPlaceBtn(_ sender: Any) {
        
        counter += 1
        
        if (counter >= placesArray.count){
            
            counter = 0
            
        }
        
        placeNameLbl.text = placesArray[counter].placeName
        placeImg.image = UIImage(named: placesArray[counter].image)
        DescriptionLbl.text = placesArray[counter].description
            
    }
    
    // When you want to reach the previous tourist attraction, you'll click on previous button
    @IBAction func previousPlaceBtn(_ sender: Any) {
        
        counter -= 1

        if (counter < 0){

            counter = placesArray.count - 1

        }
        
        placeNameLbl.text = placesArray[counter].placeName
        placeImg.image = UIImage(named: placesArray[counter].image)
        DescriptionLbl.text = placesArray[counter].description

        }
    
    //When you want to change the light of the screen, you'll use segmented control buttons
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
        
        if (sender.selectedSegmentIndex == 0) {
            
            self.view.backgroundColor = .white
            
            placeNameLbl.textColor = .black
            DescriptionLbl.textColor = .black
            
            
        } else {
            
            
//            view.overrideUserInterfaceStyle = .dark

            sender.backgroundColor = .white
            self.view.backgroundColor = .black

            placeNameLbl.textColor = .white
            DescriptionLbl.textColor = .white
            
        }
        
    }
    
}

