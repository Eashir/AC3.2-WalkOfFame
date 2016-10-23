//
//  Walk.swift
//  WalkOfFame
//
//  Created by Jason Gresh on 10/18/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation

class Walk {
    let designer: String
    let info: String
    let location: String
    let sketchURLString: String
    
    init(designer: String, location: String, info: String, sketchURLString: String) {
        self.designer = designer
        self.info = info
        self.location = location
        self.sketchURLString = sketchURLString
    }
    
    convenience init?(withDict dict: [String: String]) {
        if let designer = dict["designer"],
            let info = dict["info"],
            let location = dict["location"],
            let sketchURLString = dict["sketch_by_designer"] {
            
            self.init(designer: designer, location: location, info: info, sketchURLString: sketchURLString)
        }
        else {
            return nil
        }
    }
}
