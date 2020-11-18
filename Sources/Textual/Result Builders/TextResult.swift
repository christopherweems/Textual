//
//  TextResult.swift
//  
//
//  Created by Christopher Weems on 11/18/20.
//

import SwiftUI

@_functionBuilder
public struct TextResult {
    public static func buildBlock(_ elements: Text...) -> Text {
        var combined = elements.first!
        
        elements.suffix(from: 1).forEach {
            combined = combined + $0
            
        }
        
        return combined
    }
    
    public static func buildOptional(_ optional: Text?) -> Text {
        optional ?? Text("")
    }
    
    public static func buildEither(first: Text) -> Text {
        first
    }
    
    public static func buildEither(second: Text) -> Text {
        second
    }
    
}

extension TextResult {
    public static func buildExpression(_ text: Text) -> Text {
        text
    }
    
    public static func buildExpression<SP: StringProtocol>(_ contents: SP) -> Text {
        Text(contents)
    }
    
}
