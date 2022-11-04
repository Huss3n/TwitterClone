//
//  ProfileView.swift
//  TwitterClone
//
//  Created by Muktar Hussein on 30/10/2022.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: TweetFilterViewModel = .tweets
    @Namespace var animation
    
    var body: some View {
        VStack(alignment: .leading){
            headerView
            
            actionButtons
            
            userInfoDetails
            
            tweetsProfileView
            
            
            tweetsForProfile
        
           
            
            Spacer()
        }
    }
}



struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

 extension ProfileView{
    
    var headerView : some View{
        ZStack(alignment: .bottomLeading){
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack {
                Button {
                    
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 25, height: 18)
                        .foregroundColor(.white)
                        .offset(x: 12, y: 10)
                    
                }
                
                
                Circle()
                    .frame(width: 72, height: 72)
                // move the circle to certain frames
                    .offset(x: 18, y: 30)
            }
        }
        .frame(height: 96)
    }
    var actionButtons: some View{
        HStack(spacing: 15){
            Spacer()
            
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color(.gray), lineWidth: 0.75))
            
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
            }
        }
        .padding(.trailing)
    }
    
    var userInfoDetails: some View{
        VStack(alignment: .leading, spacing: 4){
            HStack {
                Text("Hussein Aisak")
                    .font(.title2).bold()
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color(.systemBlue))
            }
            Text("@huss3n")
                .font(.subheadline)
                .foregroundColor(Color(.gray))
            
            Text("Ios Developer")
                .font(.subheadline)
                .padding(.vertical)
            
            HStack(spacing: 40){
                HStack{
                    Image(systemName: "mappin.and.ellipse")
                    Text("New York")
                }
                HStack{
                    Image(systemName: "link")
                    Text("www.apple.com")
                    
                }
            }
            .font(.caption)
            .foregroundColor(Color(.gray))
            
            HStack(spacing: 4){
                Text("200")
                    .font(.subheadline).bold()
                Text("Following")
                    .font(.caption)
                    .foregroundColor(Color(.gray))
                HStack(spacing: 4){
                    Text("600")
                        .font(.subheadline).bold()
                    Text("Followers")
                        .font(.caption)
                        .foregroundColor(Color(.gray))
                }
            }
            .padding(.vertical)
            
        }
        .padding(.horizontal)
    }
     var tweetsProfileView: some View{
         HStack{
             ForEach(TweetFilterViewModel.allCases, id: \.rawValue){ item in
                 VStack{
                     Text(item.title)
                         .font(.subheadline)
                         .fontWeight(selectedFilter == item ? .semibold : .regular)
                         .foregroundColor(selectedFilter == item ? .blue : .gray)
                     
                     if selectedFilter == item{
                         Capsule()
                             .foregroundColor(Color(.systemBlue))
                             .frame(height: 3)
                             .matchedGeometryEffect(id: "filter", in: animation)
                     }else{
                         Capsule()
                             .foregroundColor(.clear)
                             .frame(height: 3)
                     }
                 }
                 .onTapGesture {
                     withAnimation(.easeOut){
                         self.selectedFilter = item
                     }
                 }
             }
         }
         .overlay(Divider().offset(x:0, y: 16))
     }
     var tweetsForProfile: some View{
         ScrollView{
             LazyVStack{
                 ForEach(0...9, id: \.self) { _ in
                     TweetsRowView()
                         .padding()
                 }
             }
         }
     }
}
