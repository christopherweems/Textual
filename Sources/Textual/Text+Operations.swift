//
//  Text+Operations.swift
//
//
//  Created by Christopher Weems on 10/7/21.
//

import SwiftUI

extension Text {
    public static func +<SP>(_ lhs: Text, rhs: SP) -> Text where SP : StringProtocol {
        lhs + Text(rhs)
    }
    
}
