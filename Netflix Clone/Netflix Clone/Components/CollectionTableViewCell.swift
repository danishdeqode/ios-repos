//
//  CollectionTableViewCell.swift
//  Netflix Clone
//
//  Created by danish on 02/02/23.
//

import UIKit

class CollectionTableViewCell: UITableViewCell {
    
    var tileList:[SearchModel]?
    
    static let identifier = "collection_cell"
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 100, height: 200)
        
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        return collection
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .green
        contentView.addSubview(collectionView)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
//        APICaller.share.getTrendingMovies { result in
//            print("===>\(result)")
//            switch result{
//            case .success(let list):
//                self.tileList = list
//                self.collectionView.reloadData()
//                print(list.count)
//            case .failure(let error):
//                print("Error:: \(error)")
//            }
//        }
    }
    
    required init?(coder: NSCoder){
        fatalError()
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        collectionView.frame = contentView.bounds
    }

}


extension CollectionTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let _ = tileList?.count else { return 2 }
        return tileList!.count;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
    
}
