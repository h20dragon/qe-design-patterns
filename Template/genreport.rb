require 'QA_Report'
require 'BA_Report'

reporter = QA_Report.new()
reporter.output_report()

puts '-' * 70

baReport = BA_Report.new()
baReport.output_report()


