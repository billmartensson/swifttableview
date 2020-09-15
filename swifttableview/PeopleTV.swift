//
//  PeopleTV.swift
//  swifttableview
//
//  Created by Bill Martensson on 2020-09-15.
//

import UIKit


extension ViewController : UITableViewDataSource, UITableViewDelegate
{
    
    // Antal rader i tableview
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return people.count
    }
    
    // Hur en rad ser ut. Körs en gång per rad.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "personcell") as! PersonTableViewCell
        
        cell.nameLabel.text = people[indexPath.row]
        
        return cell
    }
    
    // Klickat på rad.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("KLICKAT PÅ RAD")
        
        people.remove(at: indexPath.row)
        tableView.reloadData()
        
    }
}
