# features/step_definitions/locale_steps.rb
# thanks to http://oinopa.com/2011/03/03/multi-locale-cucumber-features.html
# Allows translation within cucumber features.
#
#   When I follow t(self_generated)
#     => When I follow "#{t(:self_generated)}"
#
Given(
/ ^
  (.*)              # I should see
  (t\(([^)]+)\))    # t(self_generated)
  (.*)              # within "#main"
  $
/x) do |first, _, key, last|
  Given %Q[#{first}"#{I18n.t(key)}"#{last}]
end

