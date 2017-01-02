#
#  Created by Games Neox - 2016
#  Copyright © 2016 Games Neox. All rights reserved.
#

Pod::Spec.new do |s|
s.name                  = 'GNLog'
s.version               = '0.5.0'
s.summary               = 'Logging utility for Objective-C/Swift'

s.homepage              = 'https://github.com/games-neox/GNLog'
s.license               = { :type => 'MIT', :file => 'LICENSE' }
s.author                = { 'Games Neox' => 'games.neox@gmail.com' }
s.source                = { :git => 'https://github.com/games-neox/GNLog.git', :tag => s.version.to_s }

s.ios.deployment_target = '8.0'

s.source_files          = 'GNLog/Classes/*'

s.public_header_files   = 'GNLog/Classes/*.h'
end
