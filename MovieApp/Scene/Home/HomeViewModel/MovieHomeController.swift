//
//  MovieHomeController.swift
//  MovieApp
//
//  Created by Alper Erden on 11.04.2023.
//

import UIKit
import SnapKit

final class MovieHomeController: UIViewController {

    // MARK: - UI Elements
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    
    // MARK: - Properties
    
    // MARK: - Life Cycyle
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    // MARK: - Functions
    func configure(){
        
        drawDesign()
    }
    
    func drawDesign() {
        addElementSubviews()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MovieHomeCell.self, forCellReuseIdentifier: MovieHomeCell.Identifier.custom.rawValue)
        makeTableView()
        
    }
    
   private  func addElementSubviews(){
        view.addSubview(tableView)
    }
    // MARK: - Actions

    }

    // MARK: - TableView Extension

extension MovieHomeController: ConfigureTableView{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: MovieHomeCell = tableView.dequeueReusableCell(withIdentifier: MovieHomeCell.Identifier.custom.rawValue) as? MovieHomeCell else {return UITableViewCell()}
         
        return cell
    }
    
}

extension MovieHomeController {
    private func makeTableView() {
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
