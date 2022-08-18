//
//  TableViewReuseIdentifier.swift
//
//
//  Created by Oliver Letterer on 18.08.22.
//

import UIKit

public struct TableViewReuseIdentifier<Cell: UITableViewCell> {
    fileprivate var identifier: String
    
    public init(identifier: String? = nil) {
        if let identifier = identifier {
            self.identifier = String(reflecting: Cell.self) + "-" + identifier
        } else {
            self.identifier = String(reflecting: Cell.self)
        }
    }
}

public extension UITableView {
    func register<Cell: UITableViewCell>(_ tableViewReuseIdentifier: TableViewReuseIdentifier<Cell>) {
        register(Cell.self, forCellReuseIdentifier: tableViewReuseIdentifier.identifier)
    }
    
    func dequeueReusableCell<Cell: UITableViewCell>(withTableViewReuseIdentifier tableViewReuseIdentifier: TableViewReuseIdentifier<Cell>, for indexPath: IndexPath) -> Cell {
        return dequeueReusableCell(withIdentifier: tableViewReuseIdentifier.identifier, for: indexPath) as! Cell
    }
}
