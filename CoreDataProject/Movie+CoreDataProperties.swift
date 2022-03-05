//
//  Movie+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Daniel Jesus Callisaya Hidalgo on 5/3/22.
//
//

import Foundation
import CoreData


extension Movie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movie> {
        return NSFetchRequest<Movie>(entityName: "Movie")
    }

    @NSManaged public var title: String?
    @NSManaged public var director: String?
    @NSManaged public var year: Int16
    public var wrappedTitle: String {
        title ?? "Unknown Title"
    }
    public var wrappedDirector: String {
        director ?? "Unknown director"
    }
    
}

extension Movie : Identifiable {

}
