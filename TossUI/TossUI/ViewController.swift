//
//  ViewController.swift
//  TossUI
//
//  Created by yeoboya on 2021/09/28.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    let nameList = ["hana", "bank", "newone"]
    let moneyList = [1000000,2000000,3000000]
    
    @IBOutlet weak var cornerView: UIView!
    @IBOutlet weak var cornerView2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cornerView.roundCorners(cornerRadius: 30, maskedCorners: [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMaxYCorner])
        cornerView2.roundCorners(cornerRadius: 30, maskedCorners: [.layerMinXMinYCorner, .layerMaxXMinYCorner])

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moneyList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell {
            let img = UIImage(named: "\(nameList[indexPath.row]).png")
            cell.imgView.image = img
            cell.nameLabel.text = nameList[indexPath.row]
            cell.moneyLabel.text = "\(moneyList[indexPath.row])"
            
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
}

class ListCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
}

extension UIView {
    func roundCorners(cornerRadius: CGFloat, maskedCorners: CACornerMask) {
        clipsToBounds = true
        layer.cornerRadius = cornerRadius
        layer.maskedCorners = CACornerMask(arrayLiteral: maskedCorners)
    }
}
