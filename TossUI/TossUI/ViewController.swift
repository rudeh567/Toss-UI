//
//  ViewController.swift
//  TossUI
//
//  Created by yeoboya on 2021/09/28.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    let nameList = ["나만의 하나은행", "나만의 농협은행", "나만의 신한은행"]
    let moneyList = [1000000,2000000,3000000]
    
    @IBOutlet weak var cornerView: UIView!
    @IBOutlet weak var cornerView2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cornerView.roundCorners(cornerRadius: 30, maskedCorners: [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMaxYCorner])
        cornerView2.roundCorners(cornerRadius: 30, maskedCorners: [.layerMinXMinYCorner, .layerMaxXMinYCorner])

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        return cell
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
