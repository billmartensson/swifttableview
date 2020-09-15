//
//  ViewController.swift
//  swifttableview
//
//  Created by Bill Martensson on 2020-09-15.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var peopleTableview: UITableView!
    @IBOutlet weak var nameTextfield: UITextField!
    
    var people = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Koppla tableview funktion/innehåll till viewcontrollern
        peopleTableview.dataSource = self
        peopleTableview.delegate = self
        
        // Lägg till i lista/array av namn
        people.append("Arne")
        people.append("Bertil")
        people.append("Caesar")
        people.append("David")
    }
    
    // Klicka på "Lägg till"-knappen
    @IBAction func addName(_ sender: Any) {
        
        // Om namn är tomt, sluta köra funktion
        if(nameTextfield.text == "")
        {
            return
        }
        
        // Lägg till namn i lista
        people.append(nameTextfield.text!)
        
        // Ladda om tableview
        peopleTableview.reloadData()
        
        // Töm textfältet
        nameTextfield.text = ""
    }
    
}






