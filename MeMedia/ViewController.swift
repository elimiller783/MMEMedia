//
//  ViewController.swift
//  MeMedia
//
//  Created by Elias Miller on 4/1/17.
//  Copyright © 2017 Elias Miller. All rights reserved.
//

import UIKit

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        //        navigationItem.title = "Home"
        //
        //        collectionView?.backgroundColor = UIColor.white
        //
        //        collectionView?.register(VideoCell.self, forCellWithReuseIdentifier: "cellId")
        //    }
        //
        //    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //        return 5
        //    }
        //
        //    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
        //
        //        return cell
        //    }
        //
        //    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //        return CGSize(width: view.frame.width, height: 200)
        //    }
        //
        //    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        //        return 0
        //    }
        //
        navigationItem.title = "Home"
        navigationController?.navigationBar.isTranslucent = false
        
        //    let titleLabel = UILabel(frame: CGSize(0.0, 0.0, view.frame.width - 32, height: view.frame.height))
        //     let titleLabel = UILabel(frame: CGRectMake(0, 0, view.frame.width - 32, view.frame.height))
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.height))
        //     titleLabel.backgroundColor = UIColor.black
        titleLabel.text = "Home"
        titleLabel.textColor = UIColor.white
        titleLabel.font = UIFont.systemFont(ofSize: 18)
        navigationItem.titleView = titleLabel
        
        
        //
        collectionView?.backgroundColor = UIColor.white
        collectionView?.register(VideoCell.self, forCellWithReuseIdentifier: "cellID")
        
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath)
        // cell.backgroundColor = UIColor.red
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = (view.frame.width - 16 - 16) * 9 / 16
        return CGSize(width: view.frame.width, height: height + 16 + 68)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}


//class VideoCell: UICollectionViewCell {
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        setupViews()
//    }
//
//    let thumbnailImageView: UIImageView = {
//        let imageView = UIImageView()
//        imageView.backgroundColor = UIColor.blue
//        imageView.image = UIImage(named: "taylor_swift_blank_space")
//        return imageView
//    }()
//
//    let userProfileImageView: UIImageView = {
//        let imageView = UIImageView()
//        imageView.backgroundColor = UIColor.green
//        return imageView
//    }()
//
//    let separatorView: UIView = {
//        let view = UIView()
//        view.backgroundColor = UIColor.black
//        return view
//    }()
//
//    let titleLabel: UILabel = {
//        let label = UILabel()
//        label.backgroundColor = UIColor.purple
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//
//    let subtitleTextView: UITextView = {
//        let textView = UITextView()
//        textView.backgroundColor = UIColor.red
//        textView.translatesAutoresizingMaskIntoConstraints = false
//        return textView
//    }()
//
//    func setupViews() {
//        addSubview(thumbnailImageView)
//        addSubview(separatorView)
//        addSubview(userProfileImageView)
//        addSubview(titleLabel)
//        addSubview(subtitleTextView)
//
//        addConstraintsWithFormat("H:|-16-[v0]-16-|", views: thumbnailImageView)
//
//        addConstraintsWithFormat("H:|-16-[v0(44)]", views: userProfileImageView)
//
//        //vertical constraints
//        addConstraintsWithFormat("V:|-16-[v0]-8-[v1(44)]-16-[v2(1)]|", views: thumbnailImageView, userProfileImageView, separatorView)
//
//        addConstraintsWithFormat("H:|[v0]|", views: separatorView)
//
//        //top constraint
//        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: thumbnailImageView, attribute: .bottom, multiplier: 1, constant: 8))
//        //left constraint
//        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .left, relatedBy: .equal, toItem: userProfileImageView, attribute: .right, multiplier: 1, constant: 8))
//        //right constraint
//        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .right, relatedBy: .equal, toItem: thumbnailImageView, attribute: .right, multiplier: 1, constant: 0))
//        //height constraint
//        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 20))
//
//        //top constraint
//        addConstraint(NSLayoutConstraint(item: subtitleTextView, attribute: .top, relatedBy: .equal, toItem: titleLabel, attribute: .bottom, multiplier: 1, constant: 8))
//        //left constraint
//        addConstraint(NSLayoutConstraint(item: subtitleTextView, attribute: .left, relatedBy: .equal, toItem: userProfileImageView, attribute: .right, multiplier: 1, constant: 8))
//        //right constraint
//        addConstraint(NSLayoutConstraint(item: subtitleTextView, attribute: .right, relatedBy: .equal, toItem: thumbnailImageView, attribute: .right, multiplier: 1, constant: 0))
//        //height constraint
//        addConstraint(NSLayoutConstraint(item: subtitleTextView, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 20))
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}
//
//extension UIView {
//    func addConstraintsWithFormat(_ format: String, views: UIView...) {
//        var viewsDictionary = [String: UIView]()
//        for (index, view) in views.enumerated() {
//            let key = "v\(index)"
//            view.translatesAutoresizingMaskIntoConstraints = false
//            viewsDictionary[key] = view
//        }
//        
//        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
//    }
//}
//
//
//
//
//
//
//
//
