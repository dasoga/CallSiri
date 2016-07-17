//
//  CallContact.swift
//  CallSiri
//
//  Created by Dante Solorio on 7/14/16.
//  Copyright © 2016 Dante Solorio. All rights reserved.
//

import Foundation
import Intents

public class CallContact {
    public let name: String
    public let emailAddress: String
    
    public init(name: String, emailAddress: String) {
        self.name = name
        self.emailAddress = emailAddress
    }
    
    public func inPerson() -> INPerson {
        let nameFormatter = PersonNameComponentsFormatter()
        
        if let nameComponents = nameFormatter.personNameComponents(from: name) {
            return INPerson(handle: emailAddress, nameComponents: nameComponents, contactIdentifier: nil)
        }
        else {
            return INPerson(handle: emailAddress, displayName: name, contactIdentifier: nil)
        }
    }
    
    public class func allContacts()-> [CallContact]{
        return [
            CallContact(name: "Tim Cook", emailAddress: "tim@apple.com"),
            CallContact(name: "Dante Solorio", emailAddress: "dante@dante.com"),
        ]
    }
}
