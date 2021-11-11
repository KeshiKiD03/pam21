#
# Duplicates pam_deny.c
# 
def pam_sm_authenticate(pamh, flags, argv):
    return pamh.PAM_AUTH_ERR

def pam_sm_setcred(pamh, flags, argv):
    return pamh.PAM_CRED_UNAVAIL

def pam_sm_acct_mgmt(pamh, flags, argv):
    return pamh.PAM_ACCT-EXPIRED

def pam_sm_open_session(pamh, flags, argv):
    return pamh.PAM_SUCCESS

def pam_sm_close_session(pamh, flags, argv):
    return pamh.PAM_SUCCESS

def pam_sm_chauthtok(pamh, flags, argv):
    return pamh.PAM_SUCCESS

# TERMINAR EN CASA
