//
//  MemberListView.swift
//  DataMove_exercise
//
//  Created by 유재혁 on 4/5/25.
//

import SwiftUI

// MARK: - 모델 정의
/// 하나의 멤버 정보를 표현하는 구조체
/// `Identifiable`을 채택해 List에서 사용 가능하고
/// `Hashable`을 채택해 비교 및 검색이 가능함
struct Member: Identifiable, Hashable {
    let id = UUID()
    var name: String
    var age: Int
    var part: String
}

// MARK: - 멤버 데이터를 관리하는 ObservableObject
/// 멤버 목록을 보관하고 앱 전반에서 공유할 수 있도록 하는 클래스
/// SwiftUI View가 상태 변화를 자동 감지하게 하기 위해 ObservableObject 채택
class MemberStore: ObservableObject {
    @Published var members: [Member] = [] // 전체 멤버 리스트 (변경 시 UI 자동 갱신)
}

// MARK: - 메인 리스트 뷰
/// 전체 멤버 목록을 보여주고, 추가 및 수정 기능을 제공하는 메인 화면
struct MemberListView: View {
    @EnvironmentObject var store: MemberStore          // 전역으로 주입된 멤버 데이터 저장소
    @State private var selectedMember: Member? = nil   // 현재 선택된 멤버 (수정 대상)
    @State private var showAddSheet = false            // 추가 시트를 보여줄지 여부
    @State private var showEditSheet = false           // 수정 시트를 보여줄지 여부

    var body: some View {
        NavigationStack {
            VStack {
                // 상단 타이틀
                Text("🏄‍♀️ PARD 타는 사람들 🏄🏻‍♂️")
                    .font(.largeTitle)
                    .bold()

                // 멤버 목록 리스트
                List(store.members) { member in
                    HStack {
                        Text("[ \(member.part) ] \(member.name)")
                        Spacer()
                        // 선택된 멤버일 경우 체크 표시
                        if selectedMember?.id == member.id {
                            Image(systemName: "checkmark")
                                .foregroundColor(.blue)
                        }
                    }
                    .contentShape(Rectangle()) // 셀 전체 영역을 탭 가능하게 만듦
                    .onTapGesture {
                        selectedMember = member // 멤버 선택 처리
                    }
                }

                // 하단 버튼 영역
                HStack {
                    // 추가 버튼: 새 멤버를 추가하는 시트 열기
                    Button("추가") {
                        showAddSheet = true
                    }

                    Spacer()

                    // 수정 버튼: 선택된 멤버가 있을 때만 활성화
                    Button("수정") {
                        if selectedMember != nil {
                            showEditSheet = true
                        }
                    }
                    .disabled(selectedMember == nil) // 선택된 멤버가 없으면 비활성화
                }
                .padding()
            }

            // 멤버 추가 시트
            .sheet(isPresented: $showAddSheet) {
                // 새 멤버 추가 모드: index 전달 없이 MemberFormView 호출
                MemberFormView(store: _store)
            }

            // 멤버 수정 시트
            .sheet(isPresented: $showEditSheet) {
                if let selected = selectedMember,
                   let index = store.members.firstIndex(of: selected) {
                    // 선택된 멤버의 index를 전달해서 수정 모드로 폼을 띄움
                    MemberFormView(store: _store, editIndex: index)
                }
            }

            .padding()
        }
    }
}

// MARK: - 멤버 추가/수정 뷰 (공용 폼)
/// 멤버 정보를 입력하거나 수정할 수 있는 시트 뷰
/// editIndex가 전달되면 수정 모드, 없으면 추가 모드로 작동
struct MemberFormView: View {
    @EnvironmentObject var store: MemberStore     // 멤버 데이터 저장소 접근
    @Environment(\.dismiss) var dismiss           // 시트 닫기를 위한 환경 값

    // 입력 필드 상태값
    @State private var name: String = ""
    @State private var age: String = ""
    @State private var part: String = ""

    var editIndex: Int? = nil // 수정 대상 멤버의 인덱스 (nil이면 추가 모드)

    var body: some View {
        VStack(spacing: 16) {
            // 이름 입력 필드
            TextField("이름", text: $name)
                .textFieldStyle(.roundedBorder)

            // 나이 입력 필드 (숫자만 입력 가능)
            TextField("나이", text: $age)
                .keyboardType(.numberPad)
                .textFieldStyle(.roundedBorder)

            // 파트 입력 필드
            TextField("파트", text: $part)
                .textFieldStyle(.roundedBorder)

            // 저장 버튼: 입력값을 store에 저장
            Button("저장") {
                // 1. 필수 값 검증: 이름, 나이, 파트가 비어있으면 저장하지 않음

                

                // 2. 수정 모드일 경우 기존 멤버 수정

                // 3. 추가 모드일 경우 새 멤버 추가
           
                
                dismiss() // 시트 닫기
            }

            // 취소 버튼: 시트 닫기만 수행
            Button("취소", role: .cancel) {
                dismiss()
            }
        }
        .padding()
        .onAppear {
            // 수정 모드일 경우 기존 멤버 정보를 입력 필드에 미리 채워 넣음
            if let index = editIndex {
                let member = store.members[index]
                name = member.name
                age = String(member.age)
                part = member.part
            }
        }
    }
}
