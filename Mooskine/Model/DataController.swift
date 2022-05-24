//
//  DataController.swift
//  Mooskine
//
//  Created by Aleksandrs Trubacs on 17/05/2022.
//  Copyright © 2022 Udacity. All rights reserved.
//

import Foundation
import CoreData

class DataController {
    
    let persistentContainer: NSPersistentContainer
    
    var viewContext: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    init(modelName: String) {
        persistentContainer = NSPersistentContainer(name: modelName)
    }
    
    func load(completion: (() -> Void)? = nil) {
        persistentContainer.loadPersistentStores { storeDescription, error in
            guard error == nil else {
                fatalError(error!.localizedDescription)
            }
            self.autoSaveViewContext(interval: 40)
            completion?()
        }
        
    }
    
    
}

extension DataController {
    
    func autoSaveViewContext(interval: TimeInterval = 30) {
        print("Autosave running")
        guard interval > 0 else {
            print("cannot save negative autosave interval")
            return
        }
        if viewContext.hasChanges {
            try? viewContext.save()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + interval) {
            self.autoSaveViewContext(interval: interval)
        }
        
    }
    
}
