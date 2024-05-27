//
//  ViewController.swift
//  AssociatedType
//
//  Created by Muneesh Kumar on 25/05/24.
//

import UIKit

class StackViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let stack = Stack()
        stack.addItem(item: 5)
        stack.addItem(item: 10)
        stack.removeItem()
        stack.getItems()
        print("stack items -\(stack.getItems())")
        // Do any additional setup after loading the view.
    }
}

class Stack: StackProtocol {
    typealias Item = Int
    var items: [Int] = []
    func addItem(item: Int) {
        items.append(item)
    }
    func removeItem() {
        if !items.isEmpty {
            items.removeLast()
        }
    }
    func getItems() -> [Int] {
        return items
    }
}
