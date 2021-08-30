//
//  NewViewController.swift
//  Wheather1640
//
//  Created by Екатерина on 29.08.2021.
//

import UIKit

class NewViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    
    @IBAction func buttonPressed() {
        self.navigationController?.popToRootViewController(animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
