//
//  ViewModel.swift
//  BottomSheetExample
//
//  Created by Gaetano Matonti on 22/11/20.
//

public protocol Item {
  var title: String { get }
}

public final class ViewModel {
  struct SheetSizingItem: Item {
    let style: BottomSheetView.SheetSizingStyle
    let title: String
  }
  
  struct HandleStyle: Item {
    let style: BottomSheetView.HandleStyle
    let title: String
  }

  let sheetSizingItems: [SheetSizingItem] = [
    .init(style: .toSafeAreaTop, title: "Safe Area")
  ]
    
  let handleStyleItems: [HandleStyle] = [
    .init(style: .outside, title: "Outside")
  ]
  
  var selectedSheetSizingStyle: BottomSheetView.SheetSizingStyle = .adaptive

  var selectedHandleStyle: BottomSheetView.HandleStyle = .none
}
