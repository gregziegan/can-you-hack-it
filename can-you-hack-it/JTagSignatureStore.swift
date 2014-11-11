//
//  JTagSignatureStore.swift
//  can-you-hack-it
//
//  Created by Gregory Ziegan on 11/10/14.
//  Copyright (c) 2014 CWRU Undergrad. All rights reserved.
//

import Foundation

class JTagSignatureStore {
    
    class var sharedInstance: JTagSignatureStore {
        struct Static {
            static let instance = JTagSignatureStore()
        }
        return Static.instance
    }
    
    var validSignatures: [String] = []
    
    func add(signature: String) {
        validSignatures.append(signature)
    }
    
    func get(index: Int) -> String {
        return validSignatures[index]
    }
    
    func isValid(signature proposedSignature: String) -> Bool {
        if contains(validSignatures, proposedSignature) {
            return true
        }
        return false
    }
    
}