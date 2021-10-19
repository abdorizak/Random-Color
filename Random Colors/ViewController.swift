//
//  ViewController.swift
//  Random Colors
//
//  Created by Abdirizak Hassan on 10/19/21.
//

import UIKit

class ViewController: UIViewController {
    
    enum cells {
        static let colorCell = "ColorCell"
    }

    enum segue {
        static let segueColor = "ToColorsDetailVC"
    }
    
    var colors: [UIColor] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColor()
    }

    func addRandomColor(){
        for _ in 0..<50 {
            colors.append(.random())
        }
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorDetailVC
        destVC.color = sender as? UIColor
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cells.colorCell, for: indexPath)
        let color = colors[indexPath.row]
        cell.backgroundColor = color
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: segue.segueColor, sender: color)
    }
}
