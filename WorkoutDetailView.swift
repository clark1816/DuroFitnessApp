//
//  WorkoutDetailView.swift
//  Duro
//
//  Created by Kelly McQuiston on 12/2/21.
//

import SwiftUI
import AVKit

struct WorkoutDetailView: View {
    
    @Environment(\.managedObjectContext) private var
        viewContext
    var workout: Workout
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(workout.day)
                .padding(.leading, 30)
                .font(.title)
   
            player()
                .padding(.top)
                .frame(height: UIScreen.main.bounds.height / 2.3)
         
               .frame( minHeight: 120, idealHeight: 180, maxHeight: .infinity, alignment: .center)
            List(workout.routine, id: \.self){  exercise in
                Text(exercise)
                
            }
            
        }
    }
}


struct WorkoutDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutDetailView(workout: Workout(day: "Chest and tris", image: "https://kinitrofitnessapp.com/assets/abbas-01-2.jpg", routine: ["butt, back, and bis"], urls: "AltLegVideo"))
    }
}
struct player : UIViewControllerRepresentable {
    func makeUIViewController(context: UIViewControllerRepresentableContext<player>) ->
        AVPlayerViewController {
       // let url = workout.urls
        let controller = AVPlayerViewController()
            let player1 = AVPlayer(url: URL(string: "https://kinitrofitnessapp.com/assets/Backvid3.mp4")!)
        controller.player = player1
        return controller
    }
    func updateUIViewController(_ uiViewController: player.UIViewControllerType, context: UIViewControllerRepresentableContext<player>) {

    }
    
}
