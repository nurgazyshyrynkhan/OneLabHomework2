//
//  ContactsViewController.swift
//  OneLabHW2TableView
//
//  Created by Gazinho Dos Santos on 01.04.2023.
//

import UIKit

class ContactsViewController: UIViewController {
    
    lazy var navigationBar: UINavigationBar = {
        let navigationBar = UINavigationBar()
        
        let navigationItem = UINavigationItem()
        navigationItem.title = "My Title"

        navigationBar.prefersLargeTitles = true
        navigationBar.titleTextAttributes = [
            .foregroundColor: UIColor.red,
        ]
        
        navigationBar.backgroundColor = #colorLiteral(red: 0.9968675971, green: 0.9961944222, blue: 0.9750069976, alpha: 1)
        navigationBar.items = [navigationItem]
        navigationBar.translatesAutoresizingMaskIntoConstraints = false
        return navigationBar
    }()
    
    
    lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        return searchBar
    }()
    
    lazy var contactTableView: UITableView = {
        let contactTableView = UITableView()
        contactTableView.translatesAutoresizingMaskIntoConstraints = false
        return contactTableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(navigationBar)
        view.addSubview(searchBar)
        view.addSubview(contactTableView)
        setContstraints()
        setupSearchBar()
        setupContactTableView()
    }
    
    private func setupSearchBar() {
        
    }
    
    private func setupContactTableView() {
        
    }
}

extension ContactsViewController {
    private func setContstraints() {
        NSLayoutConstraint.activate([
            navigationBar.topAnchor.constraint(equalTo: view.topAnchor),
            navigationBar.leftAnchor.constraint(equalTo: view.leftAnchor),
            navigationBar.rightAnchor.constraint(equalTo: view.rightAnchor),
            
            searchBar.topAnchor.constraint(equalTo: navigationBar.bottomAnchor),
            searchBar.leftAnchor.constraint(equalTo: view.leftAnchor),
            searchBar.rightAnchor.constraint(equalTo: view.rightAnchor),
            
            contactTableView.topAnchor.constraint(equalTo: searchBar.bottomAnchor),
            contactTableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            contactTableView.rightAnchor.constraint(equalTo: view.rightAnchor),
        ])
    }
}
