
//  AlertNotificationDialog.swift
//  TexiAlertMessage
//  Created by Sumit on 09/08/24.

 import UIKit

 class DirectionOfDetailsViewFirst:UIView {
       @IBOutlet weak var text_one: UILabel!
       @IBOutlet weak var description_one: UILabel!
    }

 class DirectionOfDetailsViewSecond:UIView {
      @IBOutlet weak var text_two: UILabel!
      @IBOutlet weak var description_two: UILabel!
   }

 class CardDetailsView:UIView {
        @IBOutlet weak var circleView_one: UIView!
        @IBOutlet weak var circleView_two: UIView!
        @IBOutlet weak var info_digit: UILabel!
     }

 class BottomCallingView:UIView {
        @IBOutlet weak var calling_view: UIView!
        @IBOutlet weak var chat_view: UIView!
        @IBOutlet weak var card_view: UIView!
     }

 class AlertNotificationDialogDirectionInfoView:UIView {
          @IBOutlet weak var circle_view: UIView!
          @IBOutlet weak var circle_border_view: UIView!
     }

 class AlertNotificationDialogTopView:UIView {
         @IBOutlet weak var img_display_view: UIView!
         @IBOutlet weak var title_text: UILabel!
         @IBOutlet weak var description_text: UILabel!
         @IBOutlet weak var minutes_text: UILabel!
         @IBOutlet weak var KmMinutes_text: UILabel!
    }

  class AlertNotificationDialog: UIView {
         
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var mainView:UIView!
    @IBOutlet weak var bottomCallingView:BottomCallingView!
    @IBOutlet weak var cardDetailsView:CardDetailsView!
    @IBOutlet weak var alertNotificationDialogTopView:AlertNotificationDialogTopView!
    @IBOutlet weak var alertNotificationDialogDirectionInfoView:AlertNotificationDialogDirectionInfoView!
    @IBOutlet weak var secondBotForDirectionView:UIView!
      
    @IBOutlet weak var directionOfDetailsViewFirst:DirectionOfDetailsViewFirst!
    @IBOutlet weak var directionOfDetailsViewSecond:DirectionOfDetailsViewSecond!

     
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
        mainView.layer.cornerRadius = 34
        bottomCallingView.calling_view.layer.cornerRadius = bottomCallingView.calling_view.frame.size.height / 2
        bottomCallingView.chat_view.layer.cornerRadius = bottomCallingView.chat_view.frame.size.height / 2
        bottomCallingView.card_view.layer.cornerRadius = bottomCallingView.card_view.frame.size.height / 2
        cardDetailsView.circleView_one.layer.cornerRadius = cardDetailsView.circleView_one.frame.height / 2
        cardDetailsView.circleView_two.layer.cornerRadius = cardDetailsView.circleView_two.frame.height / 2
        alertNotificationDialogTopView.img_display_view.layer.cornerRadius = alertNotificationDialogTopView.img_display_view.frame.height / 2
        alertNotificationDialogDirectionInfoView.circle_view.layer.cornerRadius = alertNotificationDialogDirectionInfoView.circle_view.frame.height / 2
        alertNotificationDialogDirectionInfoView.circle_border_view.layer.cornerRadius = alertNotificationDialogDirectionInfoView.circle_border_view.frame.height / 2
        alertNotificationDialogDirectionInfoView.circle_border_view.layer.borderWidth = 1
        alertNotificationDialogDirectionInfoView.circle_border_view.layer.borderColor = UIColor.green.cgColor
        secondBotForDirectionView.layer.cornerRadius = secondBotForDirectionView.frame.height / 2
        
        updateData()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadNib()
    }

    func loadNib() {
        Bundle.main.loadNibNamed("AlertNotificationDialog", owner: self)
        addSubview(containerView)
        containerView.frame = bounds
        containerView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
     
    
   private func updateData() {
         alertNotificationDialogTopView.title_text.text = "ABCD4567##"
         alertNotificationDialogTopView.description_text.text = "Mercedes-Benz"
         alertNotificationDialogTopView.minutes_text.text = "25 min"
         alertNotificationDialogTopView.KmMinutes_text.text = "4,5 km"
         directionOfDetailsViewFirst.text_one.text = "from"
         directionOfDetailsViewFirst.description_one.text = "2678 Grand Avenue"
         directionOfDetailsViewSecond.text_two.text = "To"
         directionOfDetailsViewSecond.description_two.text = "2638 Grand Avenue"

     }
     
     
}
