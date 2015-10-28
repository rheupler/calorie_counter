describe Tracker do
  FactoryGirl.define do
    factory(:tracker) do
      name('example tracker')
      priority(1)
    end
  end
end
