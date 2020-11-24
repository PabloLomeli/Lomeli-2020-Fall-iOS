//
//  GameData+CoreDataProperties.swift
//  Alone in Rads
//
//  Created by Pablo Lomeli on 11/24/20.
//
//

import Foundation
import CoreData


extension GameData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<GameData> {
        return NSFetchRequest<GameData>(entityName: "GameData")
    }

    @NSManaged public var gamehealth: Int32
    @NSManaged public var gamelocation: String?
    @NSManaged public var gamestatusWL: Int32
    @NSManaged public var playerlocation: PlayerData?
    @NSManaged public var storystatus: StoryData?

}

extension GameData : Identifiable {

}
