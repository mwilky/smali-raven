.class public interface abstract Lcom/android/keyguard/KeyguardViewController;
.super Ljava/lang/Object;
.source "KeyguardViewController.java"


# virtual methods
.method public abstract blockPanelExpansionFromCurrentTouch()V
.end method

.method public abstract bouncerIsOrWillBeShowing()Z
.end method

.method public abstract dismissAndCollapse()V
.end method

.method public abstract getViewRootImpl()Landroid/view/ViewRootImpl;
.end method

.method public abstract hide(JJ)V
.end method

.method public abstract isBouncerShowing()Z
.end method

.method public abstract isGoingToNotificationShade()Z
.end method

.method public abstract isShowing()Z
.end method

.method public abstract isUnlockWithWallpaper()Z
.end method

.method public abstract keyguardGoingAway()V
.end method

.method public abstract notifyKeyguardAuthenticated()V
.end method

.method public abstract onCancelClicked()V
.end method

.method public onFinishedGoingToSleep()V
    .locals 0

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 0

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    return-void
.end method

.method public abstract registerCentralSurfaces(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
.end method

.method public abstract reset(Z)V
.end method

.method public abstract resetAlternateAuth(Z)V
.end method

.method public abstract setKeyguardGoingAwayState(Z)V
.end method

.method public abstract setNeedsInput(Z)V
.end method

.method public abstract setOccluded(ZZ)V
.end method

.method public abstract shouldDisableWindowAnimationsForUnlock()Z
.end method

.method public abstract shouldSubtleWindowAnimationsForUnlock()Z
.end method

.method public abstract show$2()V
.end method

.method public abstract showBouncer(Z)V
.end method

.method public abstract startPreHideAnimation(Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda2;)V
.end method
