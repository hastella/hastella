//
//  ViewController.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/14.
//

import UIKit
import Alamofire

class HomeViewController: UIViewController {
    
private let bannerCellID = "BannerTableViewCell"
private let categoryCellID = "CategoryTableViewCell"
private let cellID = "HomeTableViewCell"

  
    @IBOutlet weak var HomeTableView: UITableView!
    
    @IBOutlet weak var registeraddressBtn: UIButton!
    
        
    var bannerImgLst : [BannerDataModel] = []
    var models : [CategoryDataModel] = []
    var storeLst : [store] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        print("HomeViewController - viewDidLoad()")
        
        //MARK: - AF .get
        HomeTableView.delegate = self
        HomeTableView.dataSource = self
        
        //Nib Register
        HomeTableView.register(UINib(nibName: bannerCellID, bundle: nil), forCellReuseIdentifier: bannerCellID)
        HomeTableView.register(UINib(nibName: categoryCellID, bundle: nil), forCellReuseIdentifier: categoryCellID)
        HomeTableView.register(UINib(nibName: cellID, bundle: nil), forCellReuseIdentifier: cellID)
        
        CategoryListCV()
        BannerListCV()

        
//        setupLocation()
//        bannerTimer()
    }
    
    @IBAction func registerAddress(_ sender: Any) {
        let Storyboard = UIStoryboard (name: "AddressViewController", bundle: nil)
        guard let vc = Storyboard.instantiateViewController(withIdentifier: "AddressViewController") as! AddressViewController? else { return }
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false)
    }
    
    func BannerListCV() {
        bannerImgLst.append(contentsOf: [
                BannerDataModel(bannerImgName: "상단광고이미지8"),
                BannerDataModel(bannerImgName: "상단광고이미지2")
        ])
    }
    
    func CategoryListCV() {
        models.append(contentsOf: [
                CategoryDataModel(imageName: "포장", textLbl: "포장"),
                CategoryDataModel(imageName: "신규 맛집", textLbl: "신규 맛집"),
                CategoryDataModel(imageName: "1인분", textLbl: "1인분"),
                CategoryDataModel(imageName: "한식", textLbl: "한식"),
                CategoryDataModel(imageName: "치킨", textLbl: "치킨"),
                CategoryDataModel(imageName: "분식", textLbl: "분식"),
                CategoryDataModel(imageName: "돈까스", textLbl: "돈까스"),
                CategoryDataModel(imageName: "족발:보쌈", textLbl: "족발/보쌈"),
                CategoryDataModel(imageName: "찜:탕", textLbl: "찜/탕"),
                CategoryDataModel(imageName: "구이", textLbl: "구이"),
                CategoryDataModel(imageName: "피자", textLbl: "피자"),
                CategoryDataModel(imageName: "중식", textLbl: "중식"),
                CategoryDataModel(imageName: "일식", textLbl: "일식"),
                CategoryDataModel(imageName: "회:해물", textLbl: "회/해물"),
                CategoryDataModel(imageName: "양식", textLbl: "양식"),
                CategoryDataModel(imageName: "커피:차", textLbl: "커피/차"),
                CategoryDataModel(imageName: "디저트", textLbl: "디저트"),
                CategoryDataModel(imageName: "간식", textLbl: "간식"),
                CategoryDataModel(imageName: "아시안", textLbl: "아시안"),
                CategoryDataModel(imageName: "샌드위치", textLbl: "샌드위치"),
                CategoryDataModel(imageName: "샐러드", textLbl: "샐러드"),
                CategoryDataModel(imageName: "도시락", textLbl: "도시락"),
                CategoryDataModel(imageName: "죽", textLbl: "죽"),
                CategoryDataModel(imageName: "프랜차이즈", textLbl: "프랜차이즈")
            ])
        }
    
    
//    func SetCV() {
//        storeLst.append(contentsOf: [
//        ])
//    }

}

//    private func setHomeUI() {
////        let url = URL(string: "https://openweathermap.org/img/wn/\(self.weather?.icon ?? "00")@2x.png")
////        let data = try? Data(contentsOf: url!)
////        if let data = data {
////            conditionImgView.image = UIImage(data: data)
////        }
//        var storeName : Int = 0
//        storeName = Int((StoreDataModel?.name)!)
////        let temp = main?.temp ?? 0.0
//
//    //    if response.main?.temp == nil {
//    //                        self.temperatureLbl.text = "조회 불가"
//    //                   } else {
//    //                       guard let temp = response.main?.temp else { return }
//    //                        self.temperatureLbl.text = "\(temp)"
//   //                     }
//
//        var tempMax : Int = 0
//        tempMax = Int((main!.temp_max)!)
//
//        var tempMin : Int = 0
//        tempMin = Int((main!.temp_min)!)
//
//        var weatherCon : String = ""
//        weatherCon = String((weather!.main)!)
//
//        var location : String = ""
//        location = String((name!))
//
//        self.temperatureLbl.text = "\(temp)°C"
//        self.tempMaxLbl.text = "최고: \(tempMax)°C"
//        self.tempMinLbl.text = "최저: \(tempMin)°C"
//        self.conditionLbl.text = "\(weatherCon)"
//        self.locationLbl.text = "\(location)"
//}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
//    func tableView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        if tableView == self.HomeTableView {
//            guard let cell = HomeTableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as? HomeTableViewCell else {return UITableViewCell()}
//            cell.cellImageView.image = UIImage(named: self.storeLst[indexPath.row])
//
//            return cell
//        } else if tableView == self.
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableView == self.HomeTableView {
            return models.count
        }
        else if tableView == self.HomeTableView {
            return bannerImgLst.count
        }
        return storeLst.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            let cell = HomeTableView.dequeueReusableCell(withIdentifier: bannerCellID, for: indexPath) as! BannerTableViewCell
            
            cell.configure(with: bannerImgLst)
            
            return cell
        case 1:
            let cell = HomeTableView.dequeueReusableCell(withIdentifier: categoryCellID, for: indexPath) as! CategoryTableViewCell
            
            cell.configure(with: models)
            
            return cell
        default:
            guard let cell = HomeTableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as? HomeTableViewCell else {return UITableViewCell()}
            
            cell.delegate = self
//
//            let sLst = self.storeLst[indexPath.item]
//
////            cell.cellImageView.image = sLst.storeImage!
//            cell.nameLbl.text = sLst.name!
//            cell.scoreLbl.text = sLst.score!
//            cell.reviewnumberLbl.text = sLst.reviewCount!
//            cell.timeLbl.text = sLst.deliveryTime!
//            cell.deliveryfeeLbl.text = sLst.deliveryFee!
//            cell.deliverytypeLbl.text = sLst.deliveryType!

            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return CGFloat(160)
        case 1:
            return CGFloat(130)
        default:
            return CGFloat(300)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

extension HomeViewController: HomeTableViewCellDelegate {
    func presentViewController() {
        let Storyboard = UIStoryboard (name: "Main", bundle: nil)
        guard let vc = Storyboard.instantiateViewController(withIdentifier: "StoreDetailViewController") as? StoreDetailViewController else { return }
        
        self.present(vc, animated: true)
    }
}
    
//    func tableView(_ tableView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//
//        if tableView == self.HomeTableView {
//
//            guard let cellA = tableView.dequeueReusableCell(withReuseIdentifier: "categoryCellID", for: indexPath) as? CategoryTableViewCell else { return UITableViewCell()}
//
//            cellA.setData(input: categoryLst[indexPath.item].CatImg,
//                     input2: categoryLst[indexPath.item].CatLbl)
//
//            return cellA
//        }
//        else {
//
//        let cellB = tableView.dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath) as! HomeTableViewCell
//
//            cellB.storeLst[indexPath.row]
//
//            return cellB
//        }
//    }

        
//        StoreCV?.register(StoreCollectionViewCell.nib(), forCellWithReuseIdentifier: "StoreCell")
//
////      MARK: CollectionView
//        CatCV.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        CatCV.delegate = self
//        CatCV.dataSource = self
////        ConCV.delegate = self
////        ConCV.dataSource = self
//        StoreCV?.delegate = self
//        StoreCV?.dataSource = self
//
//        CatSetCV()
////        ConSetCV()
//        StoreSetCV()
//    }
//
////MARK: - DataModel
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
////    func ConSetCV() {
////        conditionLst.append(contentsOf: [
////            ConditionDataModel(ConImg: "추천순"),
////            ConditionDataModel(ConImg: "치타배달"),
////            ConditionDataModel(ConImg: "배달비"),
////            ConditionDataModel(ConImg: "최소주문"),
////            ConditionDataModel(ConImg: "포장"),
////            ConditionDataModel(ConImg: "할인쿠폰")
////        ])
////    }
////

//}
//
////    func setCV2() {
////        storeLst.append(contentsOf: [
////        ])
////    }
////
//
//// 데이터 소스 설정 - 데이터와 관련된 것들
//extension HomeViewController : UICollectionViewDataSource, UICollectionViewDelegate {
//
//    // 각 섹션에 들어가는 아이템 수
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//
//        if collectionView == self.CatCV {
//            return categoryLst.count
//        }
////        else if collectionView == self.ConCV {
////            return conditionLst.count
////        }
//        else {
//            return storeLst.count
//        }
//    }
//
//    // 각 콜렉션뷰 쎌에 대한 설정

//}
//
//extension HomeViewController : UICollectionViewDelegateFlowLayout {
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//
//        if collectionView == self.CatCV {
//            return CGSize (width: 80, height: 100)
//        }
////        else if collectionView == self.ConCV {
////            return CGSize (width: 20, height: 10)
////        }
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
////        else if collectionView == self.ConCV {
////            return 3
////        }
//        else {
//            return 0
//        }
//    }
//}

//콜렉션뷰 델리겟 - 액션과 관련된 것들

//    func getStoreData() {
//        GetStoreDataService.storeData.getStoreInfo { (response) in
//            switch response
//            {
//            case.success(let data) :
//                if let response = data as? StoreDataModel {
//                    DispatchQueue.global().sync {
//                        self.storeLst.append(response)
//                    }
//
//                    guard let url = URL(string: self.storeLst[0].data[0].image) else {return}
//                    self.adImageView.kf.indicatorType = .activity
//                    self.adImageView.kf.setImage(with: url)
//                }
//            case .requestErr(let message):
//                print("requestERR")
//            case .pathErr:
//                print("pathERR")
//            case .serverErr:
//                print("serverERR")
//            case .networkFail:
//                print("networkFail")
//            }
//        }
//    }
//}

////MARK: -Server
//    func getBannerData(){
//        GetBannerDataService.bannerData.getBannerInfo{ (response) in
//            switch response
//            {
//            case .success(let data) :
//                if let response = data as? BannerDataModel {
//                    DispatchQueue.global().sync {
//                        self.bannerList.append(response)
//                    }
//                        guard let url = URL(string: self.bannerList[0].data[0].image) else { return }
//                        self.advertiseImage.kf.indicatorType = .activity
//                        self.advertiseImage.kf.setImage(with: url)
//                }
//            case .requestErr(let message):
//                print("requestERR")
//            case .pathErr:
//                print("pathERR")
//            case .serverErr:
//                print("serverERR")
//            case .networkFail:
//                print("networkFail")
//            }
//
//        }
//    }
//    func getShopData(){
//        GetShopDataService.shopData.getShopInfo{ (response) in
//            switch response
//            {
//            case .success(let data) :
//                if let response = data as? ShopDataModel {
//                    DispatchQueue.global().async {
//                        self.eatsList.append(response)
//                    }
//                    self.onlyEatsCollectionView.reloadData()
//
//                }
//            case .requestErr(let message):
//                print("requestERR")
//            case .pathErr:
//                print("pathERR")
//            case .serverErr:
//                print("serverERR")
//            case .networkFail:
//                print("networkFail")
//            }
//
//        }
//    }
//}
//

//
//  //MARK: - Layout Helper
//  func layout() {
//    layoutTopNavigationBar()
//    layoutTopInIcon()
//    layoutTopAddressLabel()
//    layoutTopExtraIcon()
//    layoutTopSearchIcon()
//    layoutMainScrollView()
//    layoutMainScrollContainerView()
//    layoutMenuTypeCollectionView()
//    layoutMoreMenuImage()
//    layoutMoreMenuView()
//    layoutMoreMenuLabel()
//    layoutMoreMenuButton()
//    layoutGray1backView()
//    layoutOnlyEatsContainerView()
//    layoutOnlyEatsLabel()
//    layoutOnlyEatsGopageButton()
//    layoutOnlyEatsCollectionView()
//    layoutGray2BackView()
//    layoutChoiceeatsContainerView()
//    layoutChoiceEatsLabel()
//    layoutChoiceFilterCollectionView()
//    layoutChoiceEatsImageView1()
//    layoutChoiceEatsImageView2()
//  }
//  func layoutTopNavigationBar() {
//    self.view.add(topNavigationBar) {
//      $0.backgroundColor = .white
//      $0.snp.makeConstraints {
//        $0.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
//        $0.leading.equalToSuperview()
//        $0.trailing.equalToSuperview()
//        $0.height.equalTo(55)
//      }
//    }
//  }
//  func layoutTopInIcon() {
//    self.topNavigationBar.add(toppinIcon) {
//      $0.setImageByName("ic_GPS")
//      $0.snp.makeConstraints {
//        $0.centerY.equalTo(self.topNavigationBar)
//        $0.leading.equalTo(self.topNavigationBar.snp.leading).offset(101)
//        $0.height.equalTo(17)
//        $0.width.equalTo(16)
//      }
//    }
//  }
//  func layoutTopAddressLabel() {
//    self.topNavigationBar.add(topaddressLabel) {
//      $0.setupLabel(text: "서울시 종로구 평창문화로", color: .black, font: .systemFont(ofSize: 14, weight: .regular))
//      $0.snp.makeConstraints {
//        $0.centerY.equalTo(self.topNavigationBar)
//        $0.leading.equalTo(self.toppinIcon.snp.trailing).offset(9)
//      }
//    }
//  }
//  func layoutTopExtraIcon() {
//    self.topNavigationBar.add(topextraIcon) {
//      $0.setImageByName("BlueUnderbar")
//      $0.snp.makeConstraints {
//        $0.centerY.equalTo(self.topNavigationBar)
//        $0.leading.equalTo(self.topaddressLabel.snp.trailing).offset(9)
//        $0.width.equalTo(14)
//        $0.height.equalTo(17)
//      }
//    }
//  }
//  func layoutTopSearchIcon() {
//    self.topNavigationBar.add(topsearchIcon) {
//      $0.setImageByName("ic_search")
//      $0.snp.makeConstraints {
//        $0.centerY.equalTo(self.topNavigationBar)
//        $0.trailing.equalTo(self.topNavigationBar.snp.trailing).offset(-18)
//        $0.width.equalTo(30)
//        $0.height.equalTo(30)
//      }
//    }
//  }
//  func layoutMainScrollView() {
//    self.view.add(mainScrollView) {
//      $0.backgroundColor = .white
//      $0.translatesAutoresizingMaskIntoConstraints = false
//      $0.showsVerticalScrollIndicator = false
//      $0.isScrollEnabled = true
//      $0.snp.makeConstraints {
//        $0.centerX.leading.trailing.bottom.equalToSuperview()
//        $0.top.equalTo(self.topNavigationBar.snp.bottom)
//      }
//    }
//  }
//  func layoutMainScrollContainerView() {
//    self.mainScrollView.add(mainScrollContainerView) {
//      $0.translatesAutoresizingMaskIntoConstraints = false
//      $0.backgroundColor = .clear
//      $0.contentMode = .scaleToFill
//      $0.snp.makeConstraints {
//        $0.centerX.top.leading.equalToSuperview()
//        $0.bottom.equalTo(self.mainScrollView.snp.bottom)
//      }
//    }
//  }
//
//  func layoutMenuTypeCollectionView() {
//    self.mainScrollContainerView.add(menutypeCollectionView) {
//      $0.backgroundColor = .white
//      $0.showsHorizontalScrollIndicator = false
//        $0.isPagingEnabled = false
//      $0.snp.makeConstraints {
//        $0.top.equalTo(self.advertiseImage.snp.bottom)
//          $0.leading.equalTo(self.mainScrollContainerView.snp.leading).offset(16)
//        $0.trailing.equalTo(self.mainScrollContainerView.snp.trailing)
//        $0.height.equalTo(120)
//      }
//    }
//  }
//  func layoutMoreMenuImage() {
//    self.mainScrollContainerView.add(moremenuImage) {
//      $0.image = UIImage(named: "상단광고이미지8")
//      $0.snp.makeConstraints {
//        $0.top.equalTo(self.menutypeCollectionView.snp.bottom)
//        $0.leading.equalTo(self.mainScrollContainerView.snp.leading)
//        $0.trailing.equalTo(self.mainScrollContainerView.snp.trailing)
//        $0.height.equalTo(104)
//      }
//    }
//  }
//  func layoutMoreMenuView() {
//    self.moremenuImage.add(moremenuView) {
//      $0.isUserInteractionEnabled = true
//      $0.backgroundColor = .mainOrange
//      $0.setRounded(radius: 8)
//      $0.snp.makeConstraints {
//        $0.top.equalTo(self.moremenuImage.snp.top).offset(67)
//        $0.leading.equalTo(self.moremenuImage.snp.leading).offset(16)
//        $0.width.equalTo(96)
//        $0.height.equalTo(22)
//      }
//    }
//  }
//  func layoutMoreMenuLabel() {
//    self.moremenuView.add(moremenuLabel) {
//      $0.setupLabel(text: "추천메뉴 보기", color: .white, font: .systemFont(ofSize: 12, weight: .bold))
//      $0.snp.makeConstraints {
//        $0.centerY.equalTo(self.moremenuView.snp.centerY)
//        $0.leading.equalTo(self.moremenuView.snp.leading).offset(7)
//      }
//    }
//  }
//  func layoutMoreMenuButton() {
//    self.moremenuView.add(moremenuButton) {
//      $0.setImageByName("whiteGoButton")
//      $0.snp.makeConstraints {
//        $0.centerY.equalTo(self.moremenuView.snp.centerY)
//        $0.leading.equalTo(self.moremenuLabel.snp.trailing).offset(6)
//        $0.height.equalTo(22)
//        $0.width.equalTo(10)
//      }
//    }
//  }
//  func layoutGray1backView() {
//    self.mainScrollContainerView.add(gray1backView) {
//      $0.backgroundColor = .backgroundGray
//      $0.snp.makeConstraints {
//        $0.top.equalTo(self.moremenuImage.snp.bottom)
//        $0.leading.trailing.equalToSuperview()
//        $0.height.equalTo(10)
//      }
//    }
//  }
//  func layoutOnlyEatsContainerView() {
//    self.mainScrollContainerView.add(onlyEatsContainerView) {
//      $0.snp.makeConstraints {
//        $0.top.equalTo(self.gray1backView.snp.bottom)
//        $0.leading.trailing.equalToSuperview()
//        $0.height.equalTo(50)
//      }
//    }
//  }
//  func layoutOnlyEatsLabel() {
//    self.onlyEatsContainerView.add(onlyEatsLabel) {
//        $0.setupLabel(text: "이츠에만 있는 맛집", color: .black, font: .systemFont(ofSize: 17, weight: .bold))
//      $0.snp.makeConstraints {
//        $0.top.equalTo(self.onlyEatsContainerView.snp.top).offset(10)
//        $0.leading.equalToSuperview().offset(16)
//      }
//    }
//  }
//  func layoutOnlyEatsGopageButton() {
//    self.onlyEatsContainerView.add(onlyEatsgopageButton) {
//      $0.setImageByName("ic_more")
//      $0.snp.makeConstraints {
//        $0.top.equalTo(self.onlyEatsContainerView.snp.top).offset(3)
//        $0.trailing.equalTo(self.onlyEatsContainerView.snp.trailing).offset(-7)
//        $0.height.equalTo(40)
//        $0.width.equalTo(40)
//      }
//    }
//  }
//  func layoutOnlyEatsCollectionView() {
//    self.mainScrollContainerView.add(onlyEatsCollectionView) {
//      $0.backgroundColor = .white
//      $0.showsHorizontalScrollIndicator = false
//      $0.snp.makeConstraints {
//        $0.top.equalTo(self.onlyEatsContainerView.snp.bottom)
//        $0.leading.equalTo(self.mainScrollContainerView.snp.leading).offset(16.5)
//        $0.trailing.equalTo(self.mainScrollContainerView.snp.trailing)
//        $0.height.equalTo(200)
//      }
//    }
//  }
//  func layoutGray2BackView() {
//    self.mainScrollContainerView.add(gray2backView) {
//      $0.backgroundColor = .backgroundGray
//      $0.snp.makeConstraints {
//        $0.top.equalTo(self.onlyEatsCollectionView.snp.bottom)
//        $0.leading.equalTo(self.mainScrollContainerView.snp.leading)
//        $0.trailing.equalTo(self.mainScrollContainerView.snp.trailing)
//        $0.height.equalTo(10)
//      }
//    }
//  }
//  func layoutChoiceeatsContainerView() {
//    self.mainScrollContainerView.add(choiceEatsContainverView) {
//      $0.snp.makeConstraints {
//        $0.top.equalTo(self.gray2backView.snp.bottom)
//        $0.leading.equalTo(self.mainScrollContainerView.snp.leading)
//        $0.trailing.equalTo(self.mainScrollContainerView.snp.trailing)
//        $0.height.equalTo(39)
//      }
//    }
//  }
//  func layoutChoiceEatsLabel() {
//    self.choiceEatsContainverView.add(choiceEatsLabel) {
//        $0.setupLabel(text: "골라먹는 맛집", color: .black, font: .systemFont(ofSize: 17, weight: .bold))
//      $0.snp.makeConstraints {
//        $0.top.equalTo(self.choiceEatsContainverView.snp.top).offset(15)
//        $0.leading.equalTo(self.choiceEatsContainverView.snp.leading).offset(16)
//      }
//    }
//  }
//  func layoutChoiceFilterCollectionView() {
//    self.mainScrollContainerView.add(choicefilterCollectionView) {
//      $0.backgroundColor = .white
//      $0.showsHorizontalScrollIndicator = false
//      $0.snp.makeConstraints {
//        $0.top.equalTo(self.choiceEatsContainverView.snp.bottom)
//        $0.leading.equalTo(self.mainScrollContainerView.snp.leading).offset(16)
//        $0.trailing.equalTo(self.mainScrollContainerView.snp.trailing)
//        $0.height.equalTo(33)
//      }
//    }
//  }
//
//  func layoutChoiceEatsImageView1() {
//    self.mainScrollContainerView.add(choiceEatsImageView1) {
//      $0.image = UIImage(named: "onlyEatsImage1")
//      $0.snp.makeConstraints {
//        $0.top.equalTo(self.choicefilterCollectionView.snp.bottom).offset(16)
//        $0.centerX.equalToSuperview()
//        $0.height.equalTo(280)
//        $0.width.equalTo(375)
//      }
//    }
//  }
//
//  func layoutChoiceEatsImageView2() {
//    self.mainScrollContainerView.add(choiceEatsImageView2) {
//      $0.image = UIImage(named: "onlyEatsImage2")
//      $0.snp.makeConstraints {
//        $0.top.equalTo(self.choiceEatsImageView1.snp.bottom)
//        $0.centerX.equalToSuperview()
//        $0.height.equalTo(280)
//        $0.width.equalTo(375)
//        $0.bottom.equalTo(self.mainScrollContainerView.snp.bottom)
//      }
//    }
//  }
//
//  @objc func moremenuButtonClicked(_ sender: UITapGestureRecognizer) {
//    guard let subVC = UIStoryboard(name: "SubView", bundle: nil).instantiateViewController(withIdentifier: "SubViewVC") as? SubViewVC else {return}
//    self.navigationController?.pushViewController(subVC, animated: true)
//  }
//}
//
//// MARK: - UICollectionViewDelegate
//extension HomeViewController : UICollectionViewDelegateFlowLayout {
//  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//    if collectionView == menutypeCollectionView {
//      let cellWidth = 58
//      let cellHeight = 127
//      return CGSize(width: cellWidth, height: cellHeight)
//    }
//    if collectionView == onlyEatsCollectionView {
//      let cellWidth = 120
//      let cellHeight = 200
//      return CGSize(width: cellWidth, height: cellHeight)
//    }
//    if collectionView == choicefilterCollectionView {
//        var cellHeight = 28
//      var cellWidth = selectList[indexPath.row].title.count * 20
//        if(selectList[indexPath.row].isImage == true){
//            cellWidth = cellWidth + 15
//        }
//
//      return CGSize(width: cellWidth, height: cellHeight)
//    }
//      return CGSize(width: 50, height: 50)
//  }
//  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//    return UIEdgeInsets.zero
//  }
//  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//    if collectionView == menutypeCollectionView {
//      return 13
//    }
//    if collectionView == onlyEatsCollectionView {
//      return 21
//    }
//    if collectionView == choicefilterCollectionView {
//      return 10
//    }
//    return 20
//  }
//}
//
//// MARK: - UICollectionViewDataSource
//extension HomeViewVC : UICollectionViewDataSource {
//  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//
//    if collectionView == menutypeCollectionView {
//      return 10
//    }
//    if collectionView == onlyEatsCollectionView {
//        if eatsList.count == 0{
//            return 0;
//        }
//        else{
//            return eatsList[0].data.count
//        }
//    }
//    if collectionView == choicefilterCollectionView {
//      return 6
//    }
//    else {
//      return 0
//    }
//  }
//
//  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//    if collectionView == menutypeCollectionView {
//      guard let CategoryCVC = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCVC.identifier, for: indexPath) as? CategoryCVC else {return UICollectionViewCell() }
//        CategoryCVC.setData(image: categoryList[indexPath.row].imageName, category: categoryList[indexPath.row].category)
//      CategoryCVC.awakeFromNib()
//      return CategoryCVC
//    }
//    if collectionView == onlyEatsCollectionView  {
//      guard let InEatsCVC = collectionView.dequeueReusableCell(withReuseIdentifier: InEatsCVC.identifier, for: indexPath) as? InEatsCVC else {return UICollectionViewCell() }
//        InEatsCVC.getData(image: eatsList[0].data[indexPath.row].image,
//                          title: eatsList[0].data[indexPath.row].name,
//                          time: String(eatsList[0].data[indexPath.row].deliveryTime)+"분",
//                          star: String(eatsList[0].data[indexPath.row].rating) + "(" + String(eatsList[0].data[indexPath.row].comments) + ")",
//                          distance: String(eatsList[0].data[indexPath.row].distance) + "km",
//                          freeRide: eatsList[0].data[indexPath.row].isFree,
//                          id: eatsList[0].data[indexPath.row].id)
//      InEatsCVC.awakeFromNib()
//      return InEatsCVC
//    }
//    if collectionView == choicefilterCollectionView {
//      guard let selectCVC = collectionView.dequeueReusableCell(withReuseIdentifier: selectCVC.identifier, for: indexPath) as? selectCVC else {return UICollectionViewCell() }
//        selectCVC.setData(title: selectList[indexPath.row].title, isImage: selectList[indexPath.row].isImage)
//      selectCVC.awakeFromNib()
//      return selectCVC
//    }
//    return UICollectionViewCell()
//  }
//}
//
//extension HomeViewController: likeClcikedDelegate{
//    func isLikeClicked() {
//        print("딜리게이트")
//        sleep(1)
//        onlyEatsCollectionView.reloadData()
//    }
//}
//}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
 
