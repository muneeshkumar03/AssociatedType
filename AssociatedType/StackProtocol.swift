//
//  StackProtocol.swift
//  AssociatedType
//
//  Created by Muneesh Kumar on 26/05/24.
//

import Foundation

protocol StackProtocol {
    associatedtype Item
    var items: [Item] { get set }
    func addItem(item: Item)
    func removeItem()
    func getItems() -> [Item]
}
