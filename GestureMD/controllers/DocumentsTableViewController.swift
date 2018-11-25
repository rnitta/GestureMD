//
//  DocumentsTableViewController.swift
//  GestureMD
//
//  Created by amagrammer on 2018/11/24.
//  Copyright © 2018年 amagrammer. All rights reserved.
//

import UIKit
import RealmSwift

class DocumentsTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let realm = try! Realm()
    var documents: Results<Document>?
    @IBOutlet var documentsListTable: UITableView!
    @IBAction func addButtonPushed(_ sender: UIBarButtonItem) {
        // 新しいレコード
        let newDoc = Document()
        newDoc.title = "test"
        newDoc.id = UUID().uuidString
        try! realm.write {
            realm.add(newDoc)
        }
        // テーブルリロード
        documentsListTable.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        documents = realm.objects(Document.self)
    }

    // セル数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return documents!.count
    }
    
    // 各セルの内容
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = uuidSettableCell.init(style: .default, reuseIdentifier: "DocumentsListCell")
        cell.textLabel?.text = documents![indexPath.item].title
        cell.uuid = UUID(uuidString: documents![indexPath.item].id)
        
        return cell
    }
    
    // スワイプで削除
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let cell: uuidSettableCell = documentsListTable.dequeueReusableCell(withIdentifier: "DocumentsListCell")! as! uuidSettableCell
            // idで検索してオブジェクトを取得
            if let document = realm.objects(Document.self).filter("id == %@", cell.uuid?.uuidString as Any).first {
                try! realm.write() {
                    realm.delete(document)
                }
                documentsListTable.deleteRows(at: [indexPath], with: .fade)
            }
            print(documents!.count)


        }
    }
}
