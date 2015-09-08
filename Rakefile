# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'rm-mapbox-pointer'
  app.info_plist['MGLMapboxAccessToken'] = 'pk.eyJ1IjoiZGlvZ29hbmRyZSIsImEiOiJvT0lWd0JJIn0.9K1ORT72EUNOVIiGMIGUPA'
  app.info_plist['MGLMapboxMetricsEnabledSettingShownInApp'] = true
  app.info_plist['NSLocationAlwaysUsageDescription'] = "User tracking"
  app.info_plist['UIBackgroundModes'] = ['location','fetch']
  app.frameworks += %w(CoreLocation QuartzCore)
  app.pods do
    pod 'Mapbox-iOS-SDK'
  end
end
