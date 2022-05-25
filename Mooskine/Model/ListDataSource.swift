//
//  ListDataSource.swift
//  Mooskine
//
//  Created by Aleksandrs Trubacs on 24/05/2022.
//  Copyright © 2022 Udacity. All rights reserved.
//

import Foundation
import UIKit
import CoreData

//class ListDataSource<ObjectType: NSManagedObject, CellType: UITableViewCell>: NSObject, UITableViewDataSource, NSFetchedResultsControllerDelegate {
//
//    let dataController: DataController!
//
//
//
//    init(tableView: UITableView, managedObjectContext: NSManagedObjectContext, fetchRequest: NSFetchRequest<ObjectType>, configure: @escaping (CellType, ObjectType) -> Void) {
//
//        let resultController = ListDataSource<Notebook, NotebookCell>(tableView: tableView, managedObjectContext: dataController.viewContext, fetchRequest: fetchRequest, reuseCell: NotebookCell.defaultReuseIdentifier) { cell, managedObject in
//
//            // Configure cell
//
//            cell.nameLabel.text = managedObject.name
//
//            if let count = managedObject.notes?.count {
//
//                let pageString = count == 1 ? "page" : "pages"
//
//                cell.pageCountLabel.text = "\(count) \(pageString)"
//
//            }
//        }
//
//    }
//
//    // Table View Delegate Methods
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//    }
//
//}
