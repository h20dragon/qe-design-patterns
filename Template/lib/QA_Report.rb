require 'Report'

class QA_Report < Report
  
  
  def output_details
     puts '-' * 72
     puts "QA_REPORT"
     puts "Passed: 100"
     puts "Falied:   1"
     puts "Skipped:  1\n"
     puts "Result: FAIL"
  end

  
end

