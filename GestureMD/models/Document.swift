//
//  Document.swift
//  GestureMD
//
//  Created by PT2051 on 2018/11/24.
//  Copyright © 2018年 amagrammer. All rights reserved.
//

import Foundation
import RealmSwift

class Document: Object {
    dynamic var id: UUID = UUID()
    dynamic var title: String = ""
    dynamic var body: String = ""
}
