public with sharing class ReleaseItemHelper {

    public static String getStatus(String status) {
        if (status == 'Approved') {
            return 'Ready for deployment';
        } else if (status == 'In Progress') {
            return 'Deployment running';
        } else if (status == 'Failed') {
            return 'Deployment failed - rollback initiated';
        } else {
            return 'Pending review'; // test comment 1
        }
    }

    public static Boolean isApproved(String status) {
        return status == 'Approved';
    }

    public static String getReleaseNote(String version) {
        return 'Release ' + version + ' deployed successfully';
        // Demo prepartion update showcase
    }
}