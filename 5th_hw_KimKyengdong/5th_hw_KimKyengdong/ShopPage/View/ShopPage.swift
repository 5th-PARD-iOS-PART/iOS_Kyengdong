//
//  ShopPage.swift
//  5th_hw_KimKyengdong
//
//  Created by Kim Kyengdong on 5/2/25.
//

import SwiftUI

struct ShopPage: View {
    @Bindable private var shopViewModel: ShopViewModel
    
    init(shopViewModel: ShopViewModel) {
        self.shopViewModel = shopViewModel
    }
    
    @State private var selectedTab = 0
    
    let menu = ["모두","특가","식품","의류","전자제품","뷰티"]
    
    var body: some View {
        VStack{
            HStack{
                Text("토스쇼핑")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(.black)
                Spacer()
                
            }
            HStack{
                ForEach(menu.indices,id: \.self){ index in
                    VStack {
                        Button(action: {
                            selectedTab = index
                            shopViewModel.getItemList(selectedTab)
                        }) {
                            Text(menu[index])
                                .font(.system(size: 15, weight: selectedTab == index ? .bold : .regular))
                                .foregroundColor(selectedTab == index ? .black : .gray)
                        }
                        Rectangle()
                            .frame(height: 2)
                            .foregroundColor(selectedTab == index ? .black : .clear)
                            .cornerRadius(1)
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            .padding(.vertical)
            
            List{
                ForEach(shopViewModel.itemList){ item in
                    ZStack{
                        Image(item.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: .infinity)
                            .frame(height: 150) // Adjust height as needed
                            .clipped()
                        HStack(spacing:6){
                            if item.special{
                                Text("특가")
                                    .font(.caption2)
                                    .bold()
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 8)
                                    .padding(.vertical, 4)
                                    .background(Color(red: 1.0, green: 0.22, blue: 0.69)) // Pink badge
                                    .clipShape(Capsule())
                            }
                        }.padding(8)
                    }
                    Text(item.name)
                        .font(.subheadline)
                            .lineLimit(1)

                    Text("\(item.price)원")
                        .font(.headline)
                        .foregroundColor(.black)
                    Text(item.info)
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    
                }.listRowSeparator(.hidden)
            }
        }
        .padding(.horizontal)
    }
}
#Preview {
    
    // repository
    let repository = ShopData()
    
    // useCase
    let getItemListUsecaseImpl = GetItemListUsecaseImpl(repository: repository)
    
    //ViewModel
    let viewModel = ShopViewModel(getItemListUsecase:getItemListUsecaseImpl)
    
    ShopPage(shopViewModel: viewModel)
}
