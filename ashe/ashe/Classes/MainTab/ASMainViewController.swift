//
//  ASMainViewController.swift
//  ashe
//
//  Created by HuangZhen on 2017/6/7.
//  Copyright © 2017年 HuangZhen. All rights reserved.
//

import UIKit

let reuseId = "collectionViewCellReuseId"

class ASMainViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var collectionViewLayout = ASCollectionViewLayout()
    
    override func loadView() {
        super.loadView()
        self.view.backgroundColor = .white
        self.navigationItem.title = "Ashe"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.black]
        self.navigationController?.navigationBar.tintColor = UIColor.black
        self.navigationController?.navigationBar.barTintColor = UIColor.white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let button : UIButton = UIButton.init(frame: CGRect.init(x: 100, y: 100, width: 100, height: 60))
//        button.backgroundColor = .red;
//        button.addTarget(self, action: #selector(goNextPage), for: .touchUpInside)
//        self.view.addSubview(button)
        // Do any additional setup after loading the view.
        collectionViewLayout.itemSize = CGSize(width: UIScreen.main.bounds.size.width, height: 80)
        collectionViewLayout.scrollDirection = UICollectionViewScrollDirection.vertical//设置垂直显示
        collectionViewLayout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0)//设置边距
        collectionViewLayout.minimumLineSpacing = 10.0 //每个相邻的layout的上下间隔
//        defaultLayout.minimumInteritemSpacing = 0.0 //每个相邻layout的左右间隔
//        defaultLayout.headerReferenceSize = CGSize(width: 0, height: 0)
//        defaultLayout.footerReferenceSize = CGSize(width: 0, height: 15)

        let rect = CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        let collectionView = UICollectionView.init(frame: rect, collectionViewLayout: collectionViewLayout)
        collectionView.backgroundColor = UIColor.clear
        collectionView.register(ASCollectionViewCell.classForCoder(), forCellWithReuseIdentifier: reuseId)
        collectionView.dataSource = self
        collectionView.delegate = self
        self.view.addSubview(collectionView)
    }

    func goNextPage() {
        self.navigationController?.pushViewController(ASDetailViewController(), animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func randomColor() -> UIColor {
        let red = CGFloat(arc4random()%256)/255.0
        let green = CGFloat(arc4random()%256)/255.0
        let blue = CGFloat(arc4random()%256)/255.0
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    // MARK: - UICollectionViewDataSource
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1;
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        
        return 20;
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        
        let cell:ASCollectionViewCell  = collectionView.dequeueReusableCell(withReuseIdentifier: reuseId, for: indexPath as IndexPath) as! ASCollectionViewCell
        
        cell.backgroundColor = self.randomColor()
        
        return cell;
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
