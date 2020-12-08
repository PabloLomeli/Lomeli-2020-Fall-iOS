//
//  ChoiceData+CoreDataProperties.swift
//  Alone in Rads
//
//  Created by Pablo Lomeli on 11/24/20.
//
//

import Foundation
import CoreData


extension ChoiceData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ChoiceData> {
        return NSFetchRequest<ChoiceData>(entityName: "ChoiceData")
    }

    @NSManaged public var choicebad: String?
    @NSManaged public var choicegood: String?
    @NSManaged public var choiceneither: String?
    @NSManaged public var losecondition: StoryData?
    @NSManaged public var wincondition: StoryData?

}

extension ChoiceData : Identifiable {

}
