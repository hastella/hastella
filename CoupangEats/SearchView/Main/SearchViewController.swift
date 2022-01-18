//
//  SearchViewController.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/14.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var SearchTF: UITextField!
    @IBOutlet weak var searchBtn: UIButton!
    @IBOutlet weak var SearchCV: UICollectionView!
    
    var searchLst : [SearchDataModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("SearchViewController - viewDidLoad()")
        
        self.searchBtn.layer.cornerRadius = 25

//      MARK: CollectionView
        SearchCV.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        SearchCV.delegate = self
        SearchCV.dataSource = self
        SearchSetCV()
        
//        let KFoodStoreVC = UINavigationController(rootViewController: KFoodStoreLstViewController)
    }
    
    func SearchSetCV() {
        searchLst.append(contentsOf: [
            SearchDataModel(SearchImg: "포장", SearchLbl: "포장"),
            SearchDataModel(SearchImg: "신규 맛집", SearchLbl: "신규 맛집"),
            SearchDataModel(SearchImg: "1인분", SearchLbl: "1인분"),
            SearchDataModel(SearchImg: "한식", SearchLbl: "한식"),
            SearchDataModel(SearchImg: "치킨", SearchLbl: "치킨"),
            SearchDataModel(SearchImg: "분식", SearchLbl: "분식"),
            SearchDataModel(SearchImg: "돈까스", SearchLbl: "돈까스"),
            SearchDataModel(SearchImg: "족발:보쌈", SearchLbl: "족발/보쌈"),
            SearchDataModel(SearchImg: "찜:탕", SearchLbl: "찜/탕"),
            SearchDataModel(SearchImg: "구이", SearchLbl: "구이"),
            SearchDataModel(SearchImg: "피자", SearchLbl: "피자"),
            SearchDataModel(SearchImg: "중식", SearchLbl: "중식"),
            SearchDataModel(SearchImg: "일식", SearchLbl: "일식"),
            SearchDataModel(SearchImg: "회:해물", SearchLbl: "회/해물"),
            SearchDataModel(SearchImg: "양식", SearchLbl: "양식"),
            SearchDataModel(SearchImg: "커피:차", SearchLbl: "커피/차"),
            SearchDataModel(SearchImg: "디저트", SearchLbl: "디저트"),
            SearchDataModel(SearchImg: "간식", SearchLbl: "간식"),
            SearchDataModel(SearchImg: "아시안", SearchLbl: "아시안"),
            SearchDataModel(SearchImg: "샌드위치", SearchLbl: "샌드위치"),
            SearchDataModel(SearchImg: "샐러드", SearchLbl: "샐러드"),
            SearchDataModel(SearchImg: "버거", SearchLbl: "버거"),
            SearchDataModel(SearchImg: "멕시칸", SearchLbl: "멕시칸"),
            SearchDataModel(SearchImg: "도시락", SearchLbl: "도시락"),
            SearchDataModel(SearchImg: "죽", SearchLbl: "죽"),
            SearchDataModel(SearchImg: "프랜차이즈", SearchLbl: "프랜차이즈")
        ])
    }
}
    
// 데이터 소스 설정 - 데이터와 관련된 것들
extension SearchViewController : UICollectionViewDataSource, UICollectionViewDelegate {
        
    // 각 섹션에 들어가는 아이템 수
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.searchLst.count
    }
        
    // 각 콜렉션뷰 쎌에 대한 설정
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cellID = String(describing: SearchCollectionViewCell.self)
        print("cellID : \(cellID)")
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SearchCell", for: indexPath) as! SearchCollectionViewCell
            
            cell.setData(input: searchLst[indexPath.item].SearchImg,
                         input2: searchLst[indexPath.item].SearchLbl)
            
            return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//
//        let Storyboard = UIStoryboard (name: "KFoodStoreLstViewController", bundle: nil)
//        guard let vc = Storyboard.instantiateViewController(withIdentifier: "KFoodStoreLstViewController") as? KFoodStoreLstViewController? else { return }
//            vc?.categoryImg = searchLst[indexPath.item].SearchImg
//            vc?.modalPresentationStyle = .fullScreen
//        self.present(vc!, animated: true, completion: nil)
////        self.navigationController?.pushViewController(vc!, animated: true)
//    }
}

extension SearchViewController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collecionView: UICollectionView, layout collectionnViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:
        UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = collectionView.bounds

        return CGSize(width: bounds.width/3 - 10, height: bounds.height / 4)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {

        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {

        return 0
    }
}
