//
//  String+Extensions.swift
//  
//
//  Created by Christopher Weems on 2/16/21.
//

public func ??(_ lhs: Substring?, rhs: String) -> Substring {
    lhs ?? Substring(rhs)
}
