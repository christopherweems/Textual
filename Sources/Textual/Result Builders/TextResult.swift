//
//  TextResult.swift
//  
//
//  Created by Christopher Weems on 11/18/20.
//

import SwiftUI

@resultBuilder
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
    
    public static func buildExpression<V: View>(_ view: V) -> Text where V.Body == Text {
        view.body
    }
    
    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    public static func buildExpression(_ image: Image) -> Text {
        Text(image)
    }
    
}
