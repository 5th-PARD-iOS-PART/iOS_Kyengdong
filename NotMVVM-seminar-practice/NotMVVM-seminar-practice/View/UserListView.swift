//
//  UserListView.swift
//  5th-SwiftUI-MVVM
//
//  Created by 이유현 on 3/1/25.
//

import SwiftUI

/*
 실습 1:

 해당 파일은 View와 비지니스 로직이 분리되지 않고 함께 작성된 코드입니다.
 
 따라서, View와 비지니스 로직이 분리하기 위해,
 0. 먼저 코드의 로직이 어떤 식으로 흘러가는지 파악하세요.
 1. MVVM 패턴을 바탕으로 ViewModel을 생성하세요.
 2. View에는 UI와 관련된 코드, ViewModel에는 비지니스 로직이 담긴 코드로 분리하세요.
 3. 기존 로직과 동일하게 실행되는지 확인!
 
*/

struct UserListView: View {
    @ObservedObject var viewModel=ViewModel()
    
    @State private var textField: String = ""
    
    @State private var name: String = ""
    @State private var part: String = ""
    
    //MARK: - View
    var body: some View {
        NavigationStack{
            
            HStack(spacing:0){
                TextField("이름 검색", text: $textField)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button(action:{
                    viewModel.filterSearchList(textField)
                }){
                    Text("검색")
                }
                .buttonStyle(.borderedProminent)
                .padding()
            }
            
            List{
                ForEach(viewModel.filteredUserList){ user in
                    VStack(alignment: .leading , spacing: 0){
                        Text(user.name)
                            .font(.title)
                            .bold()
                        Text(user.part)
                            .font(.title2)
                    } // : VStack
                } // : loop
            } // :List
            .listStyle(.plain)
            .background(.white)
            .sheet(isPresented: $viewModel.showSheet, content: {
                SheetAddUserView(
                    showSheet: $viewModel.showSheet,
                    addNewUser : { name, part in
                        viewModel.addNewUser(name: name, part: part)
                    }
                )
            })
            
            .navigationTitle("파드 5기 개발 파트장단")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button("추가"){
                viewModel.toggleSheet()
            })
            
        } // : NavigationStack
        .onAppear{
            viewModel.userList = viewModel.getMemoMockData()
            viewModel.filteredUserList = viewModel.userList
        }
    }
}

#Preview {
    UserListView()
}
