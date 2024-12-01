//
//  FarmsViewController.swift
//  FarmsTabelView
//
//  Created by Ahmed El Gndy on 01/12/2024.
//

import UIKit

class FarmsViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet var farmsTableView: UITableView!
    
    //MARK: Properties
    var farms:[Farm] = []
    //MARK: lifecycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
         configureUI()
    }

}

extension FarmsViewController {
    private func configureUI() {
        farms = [Farm(name: "KAS Farm", image: "KSAFarm.jpg", Delivery: "Delivery Tuesday, Wednesday and Thursday")]
        configureTableView(with: farmsTableView)
    }
    private func configureTableView(with table:UITableView){
        table.register(UINib(nibName: "FarmTableViewCell", bundle:nil), forCellReuseIdentifier: "farmCellID")
        table.delegate = self
        table.dataSource = self
    }
}

extension FarmsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return farms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "farmCellID") as? FarmTableViewCell
        let farm = farms[indexPath.row]
        cell?.configure(with: farm)
        return cell ?? FarmTableViewCell()
    }
    
    
}
extension FarmsViewController: UITableViewDelegate {

}
