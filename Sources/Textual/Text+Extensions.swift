//
//  Text+Extensions.swift
//  
//
//  Created by Christopher Weems on 11/18/20.
//

import SwiftUI

// MARK: - Text.italic(_:)

public extension Text {
    func italic(_ isItalic: Bool) -> Text {
        guard isItalic else { return self }
        return self.italic()
    }
    
}