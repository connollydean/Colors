//
//  ColorsViewController.swift
//  Colors
//
//  Created by Connolly Dean on 9/28/18.
//  Copyright © 2018 Connolly Dean. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate,UITableViewDataSource  {
    
    //var colors = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple" ]
    var colors = [Color(name: "Red", UIcolor: UIColor.red),
                  Color(name: "Orange", UIcolor: UIColor.orange),
                  Color(name: "Yello", UIcolor: UIColor.yellow),
                  Color(name: "Green", UIcolor: UIColor.green),
                  Color(name: "Blue", UIcolor: UIColor.blue),
                  Color(name: "Purple", UIcolor: UIColor.purple)]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return colors.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row].name
        cell.backgroundColor = colors[indexPath.row].UIcolor
        return cell
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
