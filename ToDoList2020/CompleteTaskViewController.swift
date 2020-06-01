//
//  CompleteTaskViewController.swift
//  ToDoList2020
//
//  Created by Kennedy Morganfield on 6/1/20.
//  Copyright © 2020 Kennedy Morganfield. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    @IBOutlet weak var taskLabel: UILabel!
    
    var previousVC = ToDoTableViewController()
    var selectedToDo = ToDo()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        taskLabel.text = selectedToDo.name
    }
    
    @IBAction func completeTapped(_ sender: Any) {
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
