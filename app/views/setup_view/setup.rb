class SetupView::Setup < UIView
  def initWithFrame frame
    super
    self.styleClass = 'main_view_wrapper'

    self.addSubview( SetupView::OptionsTable.alloc.initWithFrame(bounds) )
    self.addSubview( table_title )
  end

  def table_title
    @table_title ||= UILabel.alloc.initWithFrame(CGRectZero).tap do |label|
      label.lineBreakMode = UILineBreakModeWordWrap
      label.numberOfLines = 0
      label.sizeToFit

      label.frame = [
        [self.frame.size.width/2 - 100, 10],
        [200, 40]
      ]

      label.styleId = 'label_table_title'
      label.text = 'Выберите темы:'
    end
  end
end
