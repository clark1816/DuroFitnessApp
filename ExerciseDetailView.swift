//
//  ExerciseDetailView.swift
//  Duro
//
//  Created by Kelly McQuiston on 12/3/21.
//

import SwiftUI

struct ExerciseDetailView: View {
    var exercise: Exercise
    
    var body: some View {
        VStack{
            Text(exercise.day)
            ScrollView(.vertical, showsIndicators: true){
                
                Text(exercise.move1)
                    .padding(.bottom)
                Image(uiImage: exercise.image1.load())
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 220)
                Text(exercise.howto1)
                    .padding(.top)
//                //card 2
                Text(exercise.move2)
                    .padding(.bottom)
                Image(uiImage: exercise.image2.load())
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 220)
                Text(exercise.howto2)
                    .padding(.top)
                //card 3
                VStack {
                    Text(exercise.move3)
                        .padding(.bottom)
                
                Image(uiImage: exercise.image3.load())
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 220)
                Text(exercise.howto3)
                    .padding(.top)
                //card 4
                Text(exercise.move4)
                    .padding(.bottom)
                Image(uiImage: exercise.image3.load())
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 220)
                Text(exercise.howto4)
                    .padding(.top)
                
                }
            }
        }
    }
}

struct ExerciseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseDetailView(exercise: Exercise(day: "Chest", move1: "Incline", howto1: "Do it", image1: "https://images.unsplash.com/photo-1518644961665-ed172691aaa1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDR8fGluY2xpbmUlMjBiZW5jaCUyMHByZXNzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60", move2: "Push up", howto2: "Do it", image2: "https://images.unsplash.com/photo-1518644961665-ed172691aaa1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDR8fGluY2xpbmUlMjBiZW5jaCUyMHByZXNzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60", move3: "Dip", howto3: "just do it", image3: "https://images.unsplash.com/photo-1518644961665-ed172691aaa1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDR8fGluY2xpbmUlMjBiZW5jaCUyMHByZXNzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60", move4: "bEnch", howto4: "With ur hands", image4: "https://images.unsplash.com/photo-1518644961665-ed172691aaa1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDR8fGluY2xpbmUlMjBiZW5jaCUyMHByZXNzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"))
    }
}
