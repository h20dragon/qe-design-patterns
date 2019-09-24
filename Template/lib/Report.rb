

class Report
  attr_accessor :passed, :failed
  
  def initialize
    @title = "QA Report"
  end
  
  def output_header
    puts "QA Test Report - Header"
  end
  
  def output_summary
    puts "Summary - Pass/fail/skipped"
  end

  def output_report
    output_header
    
    output_details
    
    output_summary
  end
end

