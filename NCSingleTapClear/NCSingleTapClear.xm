#import "SBNotificationsSectionHeaderView.h"

%hook SBNotificationsSectionHeaderView

- (void)buttonAction:(id)sender
{
    id xButton = MSHookIvar<id>(self, "_xButton");
    id clearButton = MSHookIvar<id>(self, "_clearButton");
    if (sender == xButton) {
        sender = clearButton;
        MSHookIvar<BOOL>(self, "_showingClear") = YES;
    }
    %orig(sender);
}

%end