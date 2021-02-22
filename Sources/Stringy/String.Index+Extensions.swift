//
//  String.Index+Extensions.swift
//  
//
//  Created by Christopher Weems on 2/16/21.
//

import Foundation

public extension Range where Bound == String.Index {
    init(_ bound: Bound) {
        self = bound..<bound
    }
    
    init?<C>(union elements: C) where C: Collection, C.Element == Range<String.Index> {
        guard let range = elements.fullRange else { return nil }
        self = range
        
    }
    
}

extension Collection where Element == Range<String.Index> {
    var fullRange: Range<Element.Bound>? {
        guard !isEmpty else { return nil }
        var lowerBound = first!.lowerBound
        var upperBound = first!.upperBound
        
        self.forEach {
            if $0.lowerBound < lowerBound { lowerBound = $0.lowerBound }
            if upperBound < $0.upperBound { upperBound = $0.upperBound }
        }
        
        return lowerBound..<upperBound
    }
    
}
