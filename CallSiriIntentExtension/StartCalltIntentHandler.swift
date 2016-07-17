//
//  StartCalltIntentHandler.swift
//  CallSiri
//
//  Created by Dante Solorio on 7/15/16.
//  Copyright © 2016 Dante Solorio. All rights reserved.
//

import Foundation
import Intents
import CallSiriFramework

class StartCallIntentHandler: NSObject, INStartAudioCallIntentHandling {
    // MARK: - INStartAudioCallIntentHandling
    
    func handle(startAudioCall intent: INStartAudioCallIntent, completion: (INStartAudioCallIntentResponse) -> Void) {
        let userActivity = NSUserActivity()
        userActivity.userInfo = ["toCall": (intent.contacts?[0])!]
        userActivity.requiredUserInfoKeys = Set(["toCall"])
        let response = INStartAudioCallIntentResponse(code: .ready, userActivity: userActivity)
        completion(response)
    }

    
//    func resolveContacts(forStartAudioCall intent: INStartAudioCallIntent, with completion: ([INPersonResolutionResult]) -> Void) {
//        if let contactsForCall = intent.contacts{
//            let contacts = CallContact.allContacts()
//            var matchedContacts: [CallContact] = []
//            
//            for contactForCall in contactsForCall{
//                for contact in contacts{
//                    print("contact.name \(contact.name) = \(contactForCall.displayName)")
//                    if contact.name == contactForCall.displayName{
//                        matchedContacts.append(contact)
//                    }
//                }
//            }
//            
//            var resolutionResult: [INPersonResolutionResult]?
//            
//            switch matchedContacts.count {
//            case 2 ... Int.max:
//                let disambiguationOptions: [INPerson] = matchedContacts.map{ contact in
//                    return contact.inPerson()
//                }
//                
//                resolutionResult = [INPersonResolutionResult.disambiguation(with: disambiguationOptions)]
//            case 1:
//                let receipentMatched = matchedContacts[0].inPerson()
//                print("Matched a recipent: \(receipentMatched.displayName)")
//                resolutionResult = [INPersonResolutionResult.success(with: receipentMatched)]
//            default:
//                break
//            }
//
//            completion(resolutionResult!)
//        }
//        
//    }
    
    
//    func handle(sendPayment intent: INSendPaymentIntent, completion: (INSendPaymentIntentResponse) -> Swift.Void) {
//        if let _ = intent.payee, let _ = intent.currencyAmount {
//            // Handle the payment here!
//            
//            completion(INSendPaymentIntentResponse.init(code: .success, userActivity: nil))
//        }
//        else {
//            completion(INSendPaymentIntentResponse.init(code: .success, userActivity: nil))
//        }
//    }
}
