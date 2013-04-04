dhl_memnosyne
=============

This is simple ruby api for tracking DHL shipments.

Quick guide:

1. gem install dhl_memnosyne

2. copy file 'lib/tasks/dhl_config.yml' into 'rails root/config/dhl_config.yml' (Rake task coming soon)

3. Edit dhl_config.yml with correct credentials.

4. require 'dhl_memnosyne'

5. DHLRuby.track(tracking_nunmber) 
