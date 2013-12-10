Transform /^line item (\d+)$/ do |line_string|
  line_string.to_i
end

Then /^I should see "([^"]*)" as the name for (line item \d+)$/ do |name, line_item|

end