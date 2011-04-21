# -*- coding: utf-8 -*-
#
# SixArm.com Factory Girl Examples
# http://sixarm.com

# Generate a random host port number.
# We use the private range 49152-65535.

def host_port
  49152+rand(16384)
end
