//
//  PelliculeCollectionViewCell.swift
//  Instant
//
//  Created by Léonard Devincre on 08/12/2018.
//  Copyright © 2018 Léonard Devincre. All rights reserved.
//
import UIKit

class PelliculeCollectionViewCell: UICollectionViewCell, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet var cellButton: PelliculeView!
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    func displayContent(pellicule: Pellicule, pell_name : String, pell_initDate : String) {
        if pellicule.nom == "addButton" {
            cellButton.setImage(pellicule.icone, for: .normal)
            cellButton.accessibilityIdentifier = "addButton"
        } else {
            cellButton.setImage(pellicule.icone, for: .normal)
            cellLabel.text = pell_name
            dateLabel.text = pell_initDate
            cellButton.accessibilityIdentifier = pell_name
        }
        
        
    }
    
    @IBAction func addButonAction(_ sender: Any) {
        if cellButton.accessibilityIdentifier == "addButton" {
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "addPellicule"), object: nil)
        } else{
            
        }
    }
}
