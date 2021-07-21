//
//  ProductDetailView.swift
//  WeeklyNewTrends
//
//  Created by Raphael Velasqua on 20/07/2021.
//

import UIKit
import SnapKit
import SDWebImage

class ProductDetailView: UIView {
	
	var name: UILabel = {
		let label = UILabel()
		label.font = UIFont.systemFont(ofSize: 15, weight: .light)
		label.textAlignment = .center
		label.textColor = .black
		label.numberOfLines = 2
		return label
	}()
	
	var color: UILabel = {
		let label = UILabel()
		label.font = UIFont.systemFont(ofSize: 15, weight: .light)
		label.textAlignment = .center
		label.textColor = .systemGray2
		label.numberOfLines = 2
		return label
	}()
	
	var price: UILabel = {
		let label = UILabel()
		label.font = UIFont.systemFont(ofSize: 15, weight: .light)
		label.textAlignment = .center
		label.textColor = .black
		label.numberOfLines = 2
		return label
	}()
	
	var image: UIImageView = {
		let imageView = UIImageView()
		imageView.contentMode = .scaleAspectFit
		imageView.clipsToBounds = true
		return imageView
	}()
	
	init() {
		super.init(frame: CGRect.zero)
		self.setupConstraints()
	}
	
	required init?(coder aDecoder: NSCoder) {
		return nil
	}
	
	func setupConstraints() {
		
		addSubview(name)
		addSubview(image)
		addSubview(color)
		addSubview(price)
		
		name.snp.makeConstraints { make in
			make.top.equalTo(safeAreaLayoutGuide.snp.topMargin)
			make.leading.equalToSuperview().offset(40)
			make.trailing.equalToSuperview().offset(-40)
		}
		
		color.snp.makeConstraints { make in
			make.top.equalTo(name.snp.bottom).offset(5)
			make.leading.equalTo(name.snp.leading)
			make.trailing.equalTo(name.snp.trailing)
		}
		
		price.snp.makeConstraints { make in
			make.top.equalTo(color.snp.bottom).offset(5)
			make.leading.equalTo(color.snp.leading)
			make.trailing.equalTo(color.snp.trailing)
		}
		image.snp.makeConstraints { make in
			make.top.equalTo(price.snp.bottom).offset(20)
			make.leading.equalToSuperview().offset(20)
			make.trailing.equalToSuperview().offset(-20)
			make.bottom.equalToSuperview()
		}
	}
	
	func config(withViewModel viewModel: ProductCellViewModelProtocol) {
		name.text = viewModel.productName()
		color.text = viewModel.productColor()
		price.text = viewModel.productPrice()
		image.sd_setImage(with: viewModel.productImage(), placeholderImage: UIImage(named: "placeholder"))
	}
	
}
