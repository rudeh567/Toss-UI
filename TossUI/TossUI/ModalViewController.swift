//
//  ModalViewController.swift
//  TossUI
//
//  Created by yeoboya on 2021/09/29.
//

import UIKit

class ModalViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var name1: UILabel!
    @IBOutlet weak var account1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        return cell
    }
    
    @IBAction func dismissModal(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}

