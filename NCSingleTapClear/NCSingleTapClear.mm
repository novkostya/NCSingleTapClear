#line 1 "/Users/novkostya/jbstuff/NCSingleTapClear/NCSingleTapClear/NCSingleTapClear.xm"
#import "SBNotificationsSectionHeaderView.h"

#include <logos/logos.h>
#include <substrate.h>
@class SBNotificationsSectionHeaderView; 
static void (*_logos_orig$_ungrouped$SBNotificationsSectionHeaderView$buttonAction$)(SBNotificationsSectionHeaderView*, SEL, id); static void _logos_method$_ungrouped$SBNotificationsSectionHeaderView$buttonAction$(SBNotificationsSectionHeaderView*, SEL, id); 

#line 3 "/Users/novkostya/jbstuff/NCSingleTapClear/NCSingleTapClear/NCSingleTapClear.xm"



static void _logos_method$_ungrouped$SBNotificationsSectionHeaderView$buttonAction$(SBNotificationsSectionHeaderView* self, SEL _cmd, id sender) {
    id xButton = MSHookIvar<id>(self, "_xButton");
    id clearButton = MSHookIvar<id>(self, "_clearButton");
    if (sender == xButton) {
        sender = clearButton;
        MSHookIvar<BOOL>(self, "_showingClear") = YES;
    }
    _logos_orig$_ungrouped$SBNotificationsSectionHeaderView$buttonAction$(self, _cmd, sender);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBNotificationsSectionHeaderView = objc_getClass("SBNotificationsSectionHeaderView"); MSHookMessageEx(_logos_class$_ungrouped$SBNotificationsSectionHeaderView, @selector(buttonAction:), (IMP)&_logos_method$_ungrouped$SBNotificationsSectionHeaderView$buttonAction$, (IMP*)&_logos_orig$_ungrouped$SBNotificationsSectionHeaderView$buttonAction$);} }
#line 17 "/Users/novkostya/jbstuff/NCSingleTapClear/NCSingleTapClear/NCSingleTapClear.xm"
