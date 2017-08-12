#!/bin/bash
set -e
offlineimap
notmuch new
notmuch tag --batch <<EOF
  +bills -inbox +flagged tag:new and from:no-reply@alertsp.chase.com
  +bills -inbox +flagged tag:new and from:xcelenergy.com
  +bills -inbox +flagged tag:new and from:noreply@centerpointenergy.com
  +work -inbox +flagged tag:new and from:noip.com
  +ship -inbox +flagged tag:new and from:newegg.com
  +ship -inbox +flagged tag:new and from:amazon.com
  +ship -inbox +flagged tag:new and from:ebay.com
  # Untag all
  -new tag:new
EOF
notifymuch
