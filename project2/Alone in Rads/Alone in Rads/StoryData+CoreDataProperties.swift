//
//  StoryData+CoreDataProperties.swift
//  Alone in Rads
//
//  Created by Pablo Lomeli on 11/24/20.
//
//

import Foundation
import CoreData


extension StoryData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<StoryData> {
        return NSFetchRequest<StoryData>(entityName: "StoryData")
    }

    @NSManaged public var storycurrent: String?
    @NSManaged public var storylosechoice: Int32
    @NSManaged public var storystatus: Int32
    @NSManaged public var storywinchoice: Int32
    @NSManaged public var gamestatus: GameData?
    @NSManaged public var losechoice: ChoiceData?
    @NSManaged public var winchoice: ChoiceData?

}

extension StoryData : Identifiable {

}
