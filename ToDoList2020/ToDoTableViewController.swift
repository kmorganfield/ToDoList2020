//
//  ToDoTableViewController.swift
//  ToDoList2020
//
//  Created by Kennedy Morganfield on 5/30/20.
//  Copyright © 2020 Kennedy Morganfield. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    var toDos : [ToDo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDos = createToDos()
    }

    // MARK: - Table view data source
    
   func createToDos() -> [ToDo] {
    
    let swift = ToDo()
        swift.name = "Learn Swift"
        swift.important = true

    let dog = ToDo()
        dog.name = "Walk the Dog"
        // important is set to false by default
          
    return [swift, dog]
    
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        let toDo = toDos[indexPath.row]
        
        if toDo.important {
           cell.textLabel?.text = "❗️" + toDo.name
         } else {
           cell.textLabel?.text = toDo.name
         }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

      // this gives us a single ToDo
      let toDo = toDos[indexPath.row]

      performSegue(withIdentifier: "moveToComplete", sender: toDo)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addVC = segue.destination as? AddTaskViewController {
            addVC.previousVC = self
        }

        if let completeVC = segue.destination as? CompleteTaskViewController {
            if let toDo = sender as? ToDo {
                completeVC.selectedToDo = toDo
                completeVC.previousVC = self
            }
        }
    }
}
