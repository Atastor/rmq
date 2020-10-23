module RubyMotionQuery
  module Stylers

    class UIDatePickerStyler < UIControlStyler

    	DATE_PICKER_MODES = {
    		time: UIDatePickerModeTime,
   			date: UIDatePickerModeDate,
   			date_and_time: UIDatePickerModeDateAndTime,
   			date_time: UIDatePickerModeDateAndTime,
   			count_down: UIDatePickerModeCountDownTimer,
   			count_down_timer: UIDatePickerModeCountDownTimer,
    	}

		DATE_PICKER_STYLES = {
			automatic: UIDatePickerStyleAutomatic,
			compact: UIDatePickerStyleCompact,
			# inline: UIDatePickerStyleInline,
			wheels: UIDatePickerStyleWheels,

		}

		def date_picker_mode=(value)
    		@view.datePickerMode = DATE_PICKER_MODES[value] || value
    	end

      def date_picker_mode
      	@view.datePickerMode
      end

	  def date_picker_style=(value)
		@view.datePickerStyle = DATE_PICKER_STYLES[value] || value
	  end

	  def date_picker_style
		@view.datePickerStyle
	  end

	end

  end
end
