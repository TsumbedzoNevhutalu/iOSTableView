//
//  ViewController.swift
//  TableViews
//
//  Created by DA MAC M1 147 on 2023/05/22.
//

import UIKit

class ViewController: UIViewController {
//IB action for tableView
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // we want the datasource of the cell to be linked to the view controller
        tableview.dataSource = self
        tableview.delegate = self
        
    }


}
//MARK: - Datasource Protocol
//populate the tableView this a, protocol
extension ViewController: UITableViewDataSource{
    //number of rows in table  it count number of rows in a a table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    //properties inside the cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = "I am a row number:\(indexPath.row)" // to know which row I am at
        
        return cell
    }
}
//MARK: - Delegates
//to show which row you have choosen or clicked
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you have clicked row number number:\(indexPath.row)")
    }
}
