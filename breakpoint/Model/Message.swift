//
//  Message.swift
//  breakpoint
//
//  Created by iosdev on 30.3.2018.
//  Copyright © 2018 HuyTrinh. All rights reserved.
//

import Foundation

class Message {
    private var _content: String
    private var _senderId: String
    
    init(content: String, senderId: String) {
        self._content = content
        self._senderId = senderId
    }
    
    var content: String {
        return _content
    }
    
    var senderId: String {
        return _senderId
    }
}
