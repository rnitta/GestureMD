//
//  Document.swift
//  GestureMD
//
//  Created by amagrammer on 2018/11/24.
//  Copyright © 2018年 amagrammer. All rights reserved.
//

import Foundation
import RealmSwift

class Document: Object {
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var title: String = ""
    @objc dynamic var body: String = ""
    @objc dynamic var createdAt = NSDate()
    @objc dynamic var updatedAt = NSData()
    
}
