public with sharing class ReleaseItemHelper {

    public static String getStatus(String status) {
        if (status == 'Approved') {
            return 'Ready for deployment';
        } else if (status == 'In Progress') {
            return 'Deployment running';
        } else {
            return 'Pending review';
        }
    }

    public static Boolean isApproved(String status) {
        return status == 'Approved';
    }
}