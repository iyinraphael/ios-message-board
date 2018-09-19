//
//  MessageThread.swift
//  Message Board
//
//  Created by Iyin Raphael on 9/19/18.
//  Copyright © 2018 Iyin Raphael. All rights reserved.
//

import Foundation

class MessageThread: Codable, Equatable{
    
    let title: String
    let identifier: String
    var messages: [MessageThread.Message]
    
    init(messages: [MessageThread.Message], title: String, identifier: String = UUID().uuidString) {
        self.messages = messages
        self.identifier = identifier
        self.title = title
    }
    
    struct Message: Equatable, Codable{
        let text: String
        let sender: String
        let timestamp: Date
        
        init(text: String, sender: String, timestamp: Date = Date()){
            self.text = text
            self.sender = sender
            self.timestamp = timestamp
        }
    }
    
    static func == (lhs: MessageThread, rhs: MessageThread) -> Bool {
        return lhs.title == rhs.title &&
            rhs.identifier == lhs.identifier &&
            rhs.messages == lhs.messages
    }
}

