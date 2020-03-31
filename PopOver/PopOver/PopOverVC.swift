//
//  PopOverVC.swift
//  PopOver
//
//  Created by Deftsoft on 08/08/19.
//  Copyright © 2019 Deftsoft. All rights reserved.
//

import UIKit

class PopOverVC: UIViewController {
//    var array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14]
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}
extension PopOverVC:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(array[indexPath.row])"
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    
}
