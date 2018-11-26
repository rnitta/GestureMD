//
//  DocumentsRootViewController.swift
//  GestureMD
//
//  Created by amagrammer on 2018/11/26.
//  Copyright © 2018年 amagrammer. All rights reserved.
//

import UIKit

class DocumentsRootViewController: UIViewController {

    var documentsTable: DocumentsTableViewController?
    @IBAction func addButtonPushed(_ sender: UIButton) {
        documentsTable?.addDocument()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        documentsTable = self.children.first as? DocumentsTableViewController
        
        // Do any additional setup after loading the view.
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
