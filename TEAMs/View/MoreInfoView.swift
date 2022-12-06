//
//  MoreInfoView.swift
//  TEAMs
//
//  Created by 강창현 on 2022/11/06.
//

import SwiftUI

struct MoreInfoView: View {
    
    @State private var name: String = ""
    @State private var age: String = ""
    @State private var phoneNum: String = ""
    @State private var location: String = ""
    
    @State private var genderColor1: Bool = false
    @State private var genderColor2: Bool = false
    
    @State private var footColor1: Bool = false
    @State private var footColor2: Bool = false
    @State private var footColor3: Bool = false
    
    @State private var positionColor1: Bool = false
    @State private var positionColor2: Bool = false
    @State private var positionColor3: Bool = false
    @State private var positionColor4: Bool = false
    
    var body: some View {
        ZStack {
            Color("MainColor")
            
                List {
                    Section {
                        VStack(alignment: .leading) {
                            Text("이름")
                                .bold()
                            TextField("이름을 입력하세요.", text: $name)
                        }
                    }
                    Section {
                        VStack(alignment: .leading) {
                            Text("성별")
                                .bold()
                            HStack {
                                Capsule()
                                    .frame(width:70, height:40)
                                    .foregroundColor(genderColor1 ? .blue : Color.gray.opacity(0.5) )
                                    .overlay {
                                        Text("남자")
                                    }
                                    .onTapGesture {
                                        genderColor1.toggle()
                                    }
                                Capsule()
                                    .frame(width:70, height:40)
                                    .foregroundColor(genderColor2 ? .pink : Color.gray.opacity(0.5) )
                                    .overlay {
                                        Text("여자")
                                    }
                                    .onTapGesture {
                                        genderColor2.toggle()
                                    }
                            }
                        }
                        VStack(alignment: .leading) {
                            Text("나이")
                                .bold()
                            TextField("나이를 입력하세요.", text: $age)
                        }
                        VStack(alignment: .leading) {
                            Text("연락처")
                                .bold()
                            TextField("연락처를 입력하세요.", text: $phoneNum)
                        }
                        VStack(alignment: .leading) {
                            Text("지역(시/군/구)")
                                .bold()
                            TextField("거주 지역을 입력하세요.", text: $location)
                        }
                    }
                    Section {
                        VStack(alignment: .leading) {
                            Text("주발")
                                .bold()
                            HStack {
                                Capsule()
                                    .frame(width:70, height:40)
                                    .foregroundColor(footColor1 ? .red : Color.gray.opacity(0.5) )
                                    .overlay {
                                        Text("오른발")
                                    }
                                    .onTapGesture {
                                        footColor1.toggle()
                                    }
                                Capsule()
                                    .frame(width:70, height:40)
                                    .foregroundColor(footColor2 ? .red : Color.gray.opacity(0.5) )
                                    .overlay {
                                        Text("왼발")
                                    }
                                    .onTapGesture {
                                        footColor2.toggle()
                                    }
                                Capsule()
                                    .frame(width:70, height:40)
                                    .foregroundColor(footColor3 ? .red : Color.gray.opacity(0.5) )
                                    .overlay {
                                        Text("양발")
                                    }
                                    .onTapGesture {
                                        footColor3.toggle()
                                    }
                            }
                        }
                        VStack(alignment: .leading) {
                            Text("선호 포지션")
                                .bold()
                            HStack {
                                Capsule()
                                    .frame(width:70, height:40)
                                    .foregroundColor(positionColor1 ? .red : Color.gray.opacity(0.5) )
                                    .overlay {
                                        Text("FW")
                                    }
                                    .onTapGesture {
                                        positionColor1.toggle()
                                    }
                                Capsule()
                                    .frame(width:70, height:40)
                                    .foregroundColor(positionColor2 ? .red : Color.gray.opacity(0.5) )
                                    .overlay {
                                        Text("MF")
                                    }
                                    .onTapGesture {
                                        positionColor2.toggle()
                                    }
                                Capsule()
                                    .frame(width:70, height:40)
                                    .foregroundColor(positionColor3 ? .red : Color.gray.opacity(0.5) )
                                    .overlay {
                                        Text("DF")
                                    }
                                    .onTapGesture {
                                        positionColor3.toggle()
                                    }
                                Capsule()
                                    .frame(width:70, height:40)
                                    .foregroundColor(positionColor4 ? .red : Color.gray.opacity(0.5) )
                                    .overlay {
                                        Text("GK")
                                    }
                                    .onTapGesture {
                                        positionColor4.toggle()
                                    }
                            }
                        }
                    }
                    NavigationLink(destination: ContentView()) {
                        Text("저장하기")
                            .bold()
                            .frame(width: 400, alignment: .center)
                            
                    }
                }
                .navigationTitle("추가 정보 입력")
            
            .navigationBarBackButtonHidden()
        }
    }
}
struct MoreInfoView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            MoreInfoView()
        }
    }
}
