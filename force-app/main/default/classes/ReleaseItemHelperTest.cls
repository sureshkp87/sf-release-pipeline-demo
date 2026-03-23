@isTest
public class ReleaseItemHelperTest {

    @isTest
    static void testApprovedStatus() {
        String result = ReleaseItemHelper.getStatus('Approved');
        System.assertEquals('Ready for deployment', result);
    }

    @isTest
    static void testInProgressStatus() {
        String result = ReleaseItemHelper.getStatus('In Progress');
        System.assertEquals('Deployment running', result);
    }

    @isTest
    static void testPendingStatus() {
        String result = ReleaseItemHelper.getStatus('Pending');
        System.assertEquals('Pending review', result);
    }

    @isTest
    static void testIsApproved() {
        System.assertEquals(true, ReleaseItemHelper.isApproved('Approved'));
        System.assertEquals(false, ReleaseItemHelper.isApproved('Pending'));
    }

    @isTest
    static void testGetReleaseNote() {
        String result = ReleaseItemHelper.getReleaseNote('v1.0');
        System.assertEquals('Release v1.0 deployed successfully', result);
    }
}