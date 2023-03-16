//
//  Student+CoreDataProperties.swift
//  coredatatest
//
//  Created by danish on 07/03/23.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var roll: String?
    @NSManaged public var name: String?

}

extension Student : Identifiable {

}
