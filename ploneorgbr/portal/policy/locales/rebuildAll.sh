#!/bin/bash
# kudos to Products.Ploneboard for the base for this file
# ensure that when something is wrong, nothing is broken more than it should...
set -e

# first, create some pot containing anything
i18ndude rebuild-pot --pot ploneorgbr.portal.policy.pot --create ploneorgbr.portal.policy --merge manual.pot ..

# finally, update the po files
i18ndude sync --pot ploneorgbr.portal.policy.pot  `find . -iregex '.*\.po$'|grep -v plone`

