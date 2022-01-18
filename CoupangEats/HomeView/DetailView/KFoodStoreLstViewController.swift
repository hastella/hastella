//
//  KFoodStoreLstViewController.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/17.
//

//import UIKit
//
//class KFoodStoreLstViewController: UIViewController {
//
//   var categoryImg = ""
//
//    @IBOutlet weak var CatCV: UICollectionView!
//    @IBOutlet weak var StoreCV: UICollectionView!
//
//    var categoryLst : [CategoryDataModel] = []
//    var storeLst : [StoreDataModel] = []
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        print("KFoodStoreLstViewController - viewDidLoad()")
//
//        StoreCV?.register(StoreCollectionViewCell.nib(), forCellWithReuseIdentifier: "StoreCell")
//
//    //      MARK: CollectionView
//        CatCV.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        CatCV.delegate = self
//        CatCV.dataSource = self
//        StoreCV?.delegate = self
//        StoreCV?.dataSource = self
//
//        CatSetCV()
//        StoreSetCV()
//    }
//
//    //MARK: - DataModel
//    func CatSetCV() {
//        categoryLst.append(contentsOf: [
//            CategoryDataModel(CatImg: "포장", CatLbl: "포장"),
//            CategoryDataModel(CatImg: "한식", CatLbl: "한식"),
//            CategoryDataModel(CatImg: "치킨", CatLbl: "분식"),
//            CategoryDataModel(CatImg: "돈까스", CatLbl: "돈까스"),
//            CategoryDataModel(CatImg: "족발:보쌈", CatLbl: "족발/보쌈"),
//            CategoryDataModel(CatImg: "찜:탕", CatLbl: "찜/탕"),
//            CategoryDataModel(CatImg: "구이", CatLbl: "구이"),
//            CategoryDataModel(CatImg: "피자", CatLbl: "피자"),
//            CategoryDataModel(CatImg: "중식", CatLbl: "중식"),
//            CategoryDataModel(CatImg: "일식", CatLbl: "일식")
//        ])
//    }
//
////    func StoreSetCV() {
////        storeLst.append(contentsOf: [
////            StoreDataModel(storeImg: "상단광고이미지1", storeLbl: "추천순"),
////            StoreDataModel(storeImg: "상단광고이미지2", storeLbl: "추천순"),
////            StoreDataModel(storeImg: "상단광고이미지3", storeLbl: "추천순"),
////            StoreDataModel(storeImg: "상단광고이미지4", storeLbl: "추천순"),
////            StoreDataModel(storeImg: "상단광고이미지5", storeLbl: "추천순"),
////            StoreDataModel(storeImg: "상단광고이미지6", storeLbl: "추천순")
////        ])
////    }
//}
//
//    // 데이터 소스 설정 - 데이터와 관련된 것들
//    extension KFoodStoreLstViewController : UICollectionViewDataSource, UICollectionViewDelegate {
//
//    // 각 섹션에 들어가는 아이템 수
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//
//        if collectionView == self.CatCV {
//            return categoryLst.count
//        }
//    //        else if collectionView == self.ConCV {
//    //            return conditionLst.count
//    //        }
//        else {
//            return storeLst.count
//        }
//    }
//
//    // 각 콜렉션뷰 쎌에 대한 설정
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//
//        if collectionView == self.CatCV {
//
//        let cellID = String(describing: CategoryCollectionViewCell.self)
//        print("cellID : \(cellID)")
//
//        let cellA = collectionView.dequeueReusableCell(withReuseIdentifier: "CatCell", for: indexPath) as! CategoryCollectionViewCell
//
//        cellA.setData(input: categoryLst[indexPath.item].CatImg,
//                     input2: categoryLst[indexPath.item].CatLbl)
//
//        return cellA
//        }
//
//        else {
//
//            let cellC = collectionView.dequeueReusableCell(withReuseIdentifier: "StoreCell", for: indexPath) as! StoreCollectionViewCell
//
//                cellC.setData(input: storeLst[indexPath.item].storeImg,
//                            input2: storeLst[indexPath.item].storeLbl)
//            return cellC
//        }
//    }
//        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//            let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
//            vc?.name = storeLst[indexPath.item].storeImg
//            self.navigationController?.pushViewController(vc!, animated: true)
//        }
//    }
//
//extension KFoodStoreLstViewController : UICollectionViewDelegateFlowLayout {
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//
//        if collectionView == self.CatCV {
//            return CGSize (width: 100, height: 100)
//        }
//    //        else if collectionView == self.ConCV {
//    //            return CGSize (width: 20, height: 10)
//    //        }
//        else {
//            return CGSize (width: 400, height: 250)
//        }
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//
//        if collectionView == self.CatCV {
//            return 0
//        }
//    //        else if collectionView == self.ConCV {
//    //            return 3
//    //        }
//        else {
//            return 0
//        }
//    }
//    }
