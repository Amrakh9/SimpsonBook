//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Amrah on 02.06.24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var mySimpsons = [Simpson]()
    var chosenSimson: Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //Simpson Objects
        let homer = Simpson(name: "Homer Simpson", job: "Nuclear Safety", image: UIImage(named: "Homer_Simpson_2006")!)
        let merger = Simpson(name: "Merge Simpson", job: "House Wife", image: UIImage(named: "Marge_Simpson")!)
        let lisa = Simpson(name: "Lisa Simpson", job: "Student", image: UIImage(named: "Lisa_Simpson")!)
        
        mySimpsons.append(homer)
        mySimpsons.append(merger)
        mySimpsons.append(lisa)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = mySimpsons[indexPath.row].name
        content.secondaryText = mySimpsons[indexPath.row].job
        cell.contentConfiguration = content
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedSimpson = chosenSimson
        }
    }
}

