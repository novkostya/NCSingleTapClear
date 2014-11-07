#line 1 "/Users/novkostya/jbstuff/NCSingleTapClear/NCSingleTapClear/NCSingleTapClear.xm"
#import "SBNotificationsSectionHeaderView.h"
#import "SBNotificationCenterHeaderView.h"

#include <logos/logos.h>
#include <substrate.h>
@class SBNotificationCenterHeaderView; @class SBNotificationsSectionHeaderView; 
static void (*_logos_orig$_ungrouped$SBNotificationsSectionHeaderView$buttonAction$)(SBNotificationsSectionHeaderView*, SEL, id); static void _logos_method$_ungrouped$SBNotificationsSectionHeaderView$buttonAction$(SBNotificationsSectionHeaderView*, SEL, id); static void (*_logos_orig$_ungrouped$SBNotificationCenterHeaderView$buttonAction$)(SBNotificationCenterHeaderView*, SEL, id); static void _logos_method$_ungrouped$SBNotificationCenterHeaderView$buttonAction$(SBNotificationCenterHeaderView*, SEL, id); 

#line 4 "/Users/novkostya/jbstuff/NCSingleTapClear/NCSingleTapClear/NCSingleTapClear.xm"



static void _logos_method$_ungrouped$SBNotificationsSectionHeaderView$buttonAction$(SBNotificationsSectionHeaderView* self, SEL _cmd, id sender) {
    id xButton = MSHookIvar<id>(self, "_xButton");
    id clearButton = MSHookIvar<id>(self, "_clearButton");
    if (sender == xButton) {
        sender = clearButton;
        MSHookIvar<BOOL>(self, "_showingClear") = YES;
    }
    _logos_orig$_ungrouped$SBNotificationsSectionHeaderView$buttonAction$(self, _cmd, sender);
}






static void _logos_method$_ungrouped$SBNotificationCenterHeaderView$buttonAction$(SBNotificationCenterHeaderView* self, SEL _cmd, id sender) {
    MSHookIvar<id>(self, "_xAction") = MSHookIvar<id>(self, "_clearAction");
    _logos_orig$_ungrouped$SBNotificationCenterHeaderView$buttonAction$(self, _cmd, sender);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBNotificationsSectionHeaderView = objc_getClass("SBNotificationsSectionHeaderView"); MSHookMessageEx(_logos_class$_ungrouped$SBNotificationsSectionHeaderView, @selector(buttonAction:), (IMP)&_logos_method$_ungrouped$SBNotificationsSectionHeaderView$buttonAction$, (IMP*)&_logos_orig$_ungrouped$SBNotificationsSectionHeaderView$buttonAction$);Class _logos_class$_ungrouped$SBNotificationCenterHeaderView = objc_getClass("SBNotificationCenterHeaderView"); MSHookMessageEx(_logos_class$_ungrouped$SBNotificationCenterHeaderView, @selector(buttonAction:), (IMP)&_logos_method$_ungrouped$SBNotificationCenterHeaderView$buttonAction$, (IMP*)&_logos_orig$_ungrouped$SBNotificationCenterHeaderView$buttonAction$);} }
#line 28 "/Users/novkostya/jbstuff/NCSingleTapClear/NCSingleTapClear/NCSingleTapClear.xm"
