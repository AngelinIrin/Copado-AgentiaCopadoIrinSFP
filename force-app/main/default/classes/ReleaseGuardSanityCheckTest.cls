@isTest
private class ReleaseGuardSanityCheckTest {
    @isTest
    static void testIsReleaseReady() {
        Test.startTest();
        Boolean ready = ReleaseGuardSanityCheck.isReleaseReady();
        Test.stopTest();
        System.assertEquals(true, ready, 'Expected ReleaseGuard sanity check to pass');
    }
}
