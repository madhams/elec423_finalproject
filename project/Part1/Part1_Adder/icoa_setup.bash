#########################################################################
#  ICOA Setup Script
#########################################################################

# BEGIN customizable section
export CDSHOME=/clear/apps/cadence/IC617
export OA_HOME=/clear/apps/cadence/IC617/oa_v22.50.080


export CNI_ROOT=/clear/courses/elec423/Project/PyCell/PCSver3
export CNI_PLAT_ROOT=${CNI_ROOT}/plat_linux_gcc483_64

export CNI_ROOT2=/clear/courses/elec423/Project/PyCell/PCSver2
export CNI_PLAT_ROOT2=${CNI_ROOT2}/plat_linux_gcc483_64

export MGC_HOME=/clear/apps/mentor/calibre-2019.1_18.11/aoj_cal_2019.1_18.11


# New Environment Variables
export SKIP_CDS_DIALOG
export CDS_LIC_FILE=5280@cadence.lic.rice.edu
export LM_LICENSE_FILE=5280@cadence.lic.rice.edu
export MGLS_LICENSE_FILE=1717@mentor.lic.rice.edu
export CDS_Netlisting_Mode=Analog
#setenv LD_ASSUME_KERNEL 2.4.1
export PYTHONHOME=$CNI_PLAT_ROOT/3rd
export PYTHONPATH=$CNI_ROOT/pylib:$CNI_PLAT_ROOT/pyext:$CNI_PLAT_ROOT/lib:$CNI_ROOT2/pylib:$CNI_PLAT_ROOT2/pyext:$CNI_PLAT_ROOT2/lib:.:${PYTHONPATH}

# The following gets rid of the annoying messages that pycell prints to stdout
export CNI_LOG_DEFAULT=/dev/null

export OA_PLUGIN_PATH=$CNI_PLAT_ROOT/3rd/oa/data/plugins:$CNI_ROOT/quickstart
# END customizable section



# Extend path
PATH=${CNI_PLAT_ROOT}/3rd/bin:${CNI_PLAT_ROOT}/3rd/oa/bin/linux_rhel40_gcc483_64/opt:${CNI_PLAT_ROOT}/bin:${CNI_ROOT}/bin:$CDSHOME/tools/bin:$CDSHOME/tools/dfII/bin:${PATH};export PATH

# Extend LD_LIBRARY_PATH
LD_LIBRARY_PATH=${CNI_PLAT_ROOT}/3rd/lib:${CNI_PLAT_ROOT}/3rd/oa/lib/linux_rhel40_gcc483_64/opt:${CNI_PLAT_ROOT}/lib:${LD_LIBRARY_PATH};export LD_LIBRARY_PATH

