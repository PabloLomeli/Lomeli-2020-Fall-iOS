//
//  PlayerData+CoreDataProperties.swift
//  Alone in Rads
//
//  Created by Pablo Lomeli on 11/24/20.
//
//

import Foundation
import CoreData


extension PlayerData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PlayerData> {
        return NSFetchRequest<PlayerData>(entityName: "PlayerData")
    }

    @NSManaged public var playerlocation: String?
    @NSManaged public var playername: String?
    @NSManaged public var playersex: String?
    @NSManaged public var gamelocation: GameData?

}

extension PlayerData : Identifiable {

}
