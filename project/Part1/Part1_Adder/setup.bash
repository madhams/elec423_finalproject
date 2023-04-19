###############################################################################
#                                                                             #
# FreePDK Setup Script                                                        #
#    2/23/2008 by Rhett Davis (rhett_davis@ncsu.edu)                           #
#                                                                             #
###############################################################################

# Set the PDK_DIR variable to the root directory of the FreePDK distribution
export PDK_DIR="/clear/courses/elec423/PDK/FreePDK45"
# Set CDSHOME to the root directory of the Cadence ICOA installatio
export CDSHOME="/clear/apps/cadence/IC617"



# Source global definitions. Check if global default files exists
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# Startup for VLSI tools for ELEC 422

. /clear/courses/elec422/setup_elec422.all.sh


if ! [ -f ${PWD}/.cdsinit ]; then
  cp ${PDK_DIR}/ncsu_basekit/cdssetup/cdsinit ${PWD}/.cdsinit
fi

if ! [ -f ${PWD}/cds.lib ]; then
  cp ${PDK_DIR}/ncsu_basekit/cdssetup/cds.lib ${PWD}/cds.lib
fi

if ! [ -f ${PWD}/lib.defs ]; then
  cp ${PDK_DIR}/ncsu_basekit/cdssetup/lib.defs ${PWD}/lib.defs
fi

if ! [ -f ${PWD}/.runset.calibre.drc ]; then
  cp ${PDK_DIR}/ncsu_basekit/cdssetup/runset.calibre.drc ${PWD}/.runset.calibre.drc
fi

if ! [ -f ${PWD}/.runset.calibre.lvs ]; then
  cp ${PDK_DIR}/ncsu_basekit/cdssetup/runset.calibre.lvs ${PWD}/.runset.calibre.lvs
fi

if ! [ -f ${PWD}/.runset.calibre.lfd ]; then
  cp ${PDK_DIR}/ncsu_basekit/cdssetup/runset.calibre.lfd ${PWD}/.runset.calibre.lfd
fi

if ! [ -f ${PWD}/.runset.calibre.pex ]; then
  cp ${PDK_DIR}/ncsu_basekit/cdssetup/runset.calibre.pex ${PWD}/.runset.calibre.pex
fi

set present = `printenv PYTHONPATH`
if [$present == ""]; then
  export PYTHONPATH=$PDK_DIR'/ncsu_basekit/techfile/cni'
else
  export PYTHONPATH=$PYTHONPATH':'$PDK_DIR'/ncsu_basekit/techfile/cni'
fi

export MGC_CALIBRE_DRC_RUNSET_FILE="./.runset.calibre.drc"
export MGC_CALIBRE_LVS_RUNSET_FILE="./.runset.calibre.lvs"
export MGC_CALIBRE_PEX_RUNSET_FILE="./.runset.calibre.pex"
