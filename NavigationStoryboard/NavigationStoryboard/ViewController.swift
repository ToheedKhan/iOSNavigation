//
//  ViewController.swift
//  NavigationStoryboard
//
//  Created by Toheed Jahan Khan on 23/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    let names = ["Brent Berg", "Cody Preston", "Kareem Dixon", "Xander Clark",
            "Francis Frederick", "Carson Hopkins", "Anthony Nguyen", "Dean Franklin",
            "Jeremy Davenport", "Rigel Bradford", "John Ball", "Zachery Norman",
            "Valentine Lindsey", "Slade Thornton", "Jelani Dickson", "Vance Hurley",
            "Wayne Ellison", "Kasimir Mueller", "Emery Pruitt", "Lucius Lawrence",
            "Kenneth Mendez"]

        override func viewDidLoad() {
            tableView.dataSource = self
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "showNameVCSegue" {
                let cell = sender as! UITableViewCell
                if let indexPath = tableView.indexPath(for: cell) {
                    let nameController = segue.destination as! NameViewController
                    nameController.fullName = names[indexPath.row]
                    tableView.deselectRow(at: indexPath, animated: true)
                }
            }
        }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return names.count
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath)
            cell.textLabel?.text = names[indexPath.row]
            return cell
        }
}
