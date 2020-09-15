//
//  ViewController.swift
//  swifttableview
//
//  Created by Bill Martensson on 2020-09-15.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var peopleTableview: UITableView!
    @IBOutlet weak var nameTextfield: UITextField!
    
    var people = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        peopleTableview.dataSource = self
        peopleTableview.delegate = self
        
        people.append("Arne")
        people.append("Bertil")
        people.append("Caesar")
        people.append("David")
    }
    
    @IBAction func addName(_ sender: Any) {
        
        if(nameTextfield.text == "")
        {
            return
        }
        
        people.append(nameTextfield.text!)
        
        peopleTableview.reloadData()
        
        nameTextfield.text = ""
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "personcell") as! PersonTableViewCell
        
        cell.nameLabel.text = people[indexPath.row]
        
        return cell
    }

}

