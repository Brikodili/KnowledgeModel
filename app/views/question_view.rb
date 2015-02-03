class QuestionView < UIView
  def initWithFrame frame
    super.tap do
      self.styleId = 'main_view'
      puts '>>>>>>>>>>>>>>>>>>'
      puts self
      puts '>>>>>>>>>>>>>>>>>>'


      self.addSubview(timer_label)
      self.addSubview(timer_button)
    end
    # super
    # self.styleId = 'main_view'
    # self
  end

  def timer_label
    @timer_label ||= UILabel.alloc.initWithFrame(CGRectZero).tap do |label|
      label.styleId = 'timer_label'
      label.text    = '00:00'
    end
  end

  def timer_button
    @timer_button ||= UIButton.buttonWithType(UIButtonTypeCustom).tap do |button|
      button.styleId = 'timer_button'
      button.setTitle('Start Timer', forState: UIControlStateNormal)
      button.setTitle('Interrupt!' , forState: UIControlStateSelected)

      button.addTarget(nextResponder, action: 'timer_button_tapped:',
        forControlEvents: UIControlEventTouchUpInside)
    end
  end

end