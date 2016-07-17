//
//  IntentHandler.swift
//  CallSiriIntentExtension
//
//  Created by Dante Solorio on 7/15/16.
//  Copyright © 2016 Dante Solorio. All rights reserved.
//

import Intents

// As an example, this class is set up to handle the Workout intents.
// You will want to replace this or add other intents as appropriate.
// The intents you wish to handle must be declared in the extension's Info.plist.

// You can test your example integration by saying things to Siri like:
// "Send $10 using <myApp>"

class IntentHandler: INExtension {
    override func handler(for intent: INIntent) -> AnyObject? {
        if intent is INStartAudioCallIntent {
            return StartCallIntentHandler()
        }else if intent is INSendPaymentIntent{
            return SendPaymentIntentHandler()
        }
        
        return nil
    }
}
