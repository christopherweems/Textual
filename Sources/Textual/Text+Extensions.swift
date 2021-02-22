//
//  Text+Extensions.swift
//  
//
//  Created by Christopher Weems on 11/18/20.
//

@_exported import Stringy
import SwiftUI

// MARK: - Text.italic(_:)

public extension Text {
    func italic(_ isItalic: Bool) -> Text {
        guard isItalic else { return self }
        return self.italic()
    }
    
}


// MARK: - Initializers

public extension Text {
    init(@TextResult _ v: () -> Text) {
        self = v()
    }
    
}

public extension Text {
    init(_ other: Text) {
        self = other
    }
    
}
