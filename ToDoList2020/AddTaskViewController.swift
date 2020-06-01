//
//  AddTaskViewController.swift
//  ToDoList2020
//
//  Created by Kennedy Morganfield on 5/30/20.
//  Copyright © 2020 Kennedy Morganfield. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    var previousVC = ToDoTableViewController()

    @IBOutlet weak var taskTextField: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func addTapped(_ sender: Any) {
        let toDo = ToDo()

        if let taskText = taskTextField.text {
          toDo.name = taskText
          toDo.important = importantSwitch.isOn
        }
        
    previousVC.toDos.append(toDo)
    previousVC.tableView.reloadData()
    navigationController?.popViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
