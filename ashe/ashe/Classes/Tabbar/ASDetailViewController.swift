//
//  ASDetailViewController.swift
//  ashe
//
//  Created by HuangZhen on 22/06/2017.
//  Copyright © 2017 HuangZhen. All rights reserved.
//

import UIKit

class ASDetailViewController: UIViewController {
    override func loadView() {
        super.loadView()
        self.view.backgroundColor = .white
        self.navigationItem.title = "Detail View"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.black]
        self.navigationController?.navigationBar.tintColor = UIColor.black
        self.navigationController?.navigationBar.barTintColor = UIColor.white
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
