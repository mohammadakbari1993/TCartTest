//
//  ItemModel.swift
//  TCart
//
//  Created by Bahman on 12/11/21.
//

import Foundation

struct BoxModel {
    var title : String
    var rows : [RowModel]?
}

struct RowModel {
    var dropDownList : [String]
    var name : String
}
