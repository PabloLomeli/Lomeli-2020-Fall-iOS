//
//  LocationData+CoreDataProperties.swift
//  Alone in Rads
//
//  Created by Pablo Lomeli on 11/24/20.
//
//

import Foundation
import CoreData


extension LocationData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<LocationData> {
        return NSFetchRequest<LocationData>(entityName: "LocationData")
    }

    @NSManaged public var locality: String?
    @NSManaged public var adminArea: String?
    @NSManaged public var country: String?
    @NSManaged public var fullLocation: String?
    @NSManaged public var currentLocation: GameData?

}

extension LocationData : Identifiable {

}
