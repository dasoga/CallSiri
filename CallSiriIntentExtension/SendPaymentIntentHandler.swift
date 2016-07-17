//
//  SendPaymentIntentHandler.swift
//  CallSiri
//
//  Created by Dante Solorio on 7/15/16.
//  Copyright © 2016 Dante Solorio. All rights reserved.
//

import Foundation
import Intents

class SendPaymentIntentHandler: NSObject, INSendPaymentIntentHandling {
    // MARK: - INSendPaymentIntentHandling
    
    func handle(sendPayment intent: INSendPaymentIntent, completion: (INSendPaymentIntentResponse) -> Swift.Void) {
        if let _ = intent.payee, let _ = intent.currencyAmount {
            // Handle the payment here!
            
            completion(INSendPaymentIntentResponse.init(code: .success, userActivity: nil))
        }
        else {
            completion(INSendPaymentIntentResponse.init(code: .success, userActivity: nil))
        }
    }
}

