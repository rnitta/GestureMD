//
//  UITableViewCell.swift
//  GestureMD
//
//  Created by amagrammer on 2018/11/25.
//  Copyright © 2018年 amagrammer. All rights reserved.
//

import UIKit

//protocol uuidSettableProtocol {
//    var uuid: UUID? { get set }
//}
//
//extension uuidSettableProtocol {
//    var id: UUID? {
//        get {
//            return self.id
//        }
//        set(uuid) {
//            id = uuid
//        }
//    }
//}

class uuidSettableCell: UITableViewCell {
    var uuid: UUID?
}
