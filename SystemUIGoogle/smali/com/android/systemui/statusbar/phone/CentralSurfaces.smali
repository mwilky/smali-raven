.class public interface abstract Lcom/android/systemui/statusbar/phone/CentralSurfaces;
.super Ljava/lang/Object;
.source "CentralSurfaces.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/plugins/ActivityStarter;
.implements Landroidx/lifecycle/LifecycleOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/CentralSurfaces$KeyboardShortcutsMessage;
    }
.end annotation


# static fields
.field public static final CAMERA_LAUNCH_GESTURE_VIBRATION_AMPLITUDES:[I

.field public static final CAMERA_LAUNCH_GESTURE_VIBRATION_TIMINGS:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->CAMERA_LAUNCH_GESTURE_VIBRATION_TIMINGS:[J

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->CAMERA_LAUNCH_GESTURE_VIBRATION_AMPLITUDES:[I

    return-void

    :array_0
    .array-data 8
        0x14
        0x14
        0x14
        0x14
        0x64
        0x14
    .end array-data

    :array_1
    .array-data 4
        0x27
        0x52
        0x8b
        0xd5
        0x0
        0x7f
    .end array-data
.end method

.method public static dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 1

    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, ".BarTransitions.mMode="

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget p1, p2, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Unknown"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static getActivityOptions(ILandroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getDefaultActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-virtual {p1, p0}, Landroid/app/ActivityOptions;->setCallerDisplayId(I)Landroid/app/ActivityOptions;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;
    .locals 3

    if-eqz p0, :cond_1

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/window/RemoteTransition;

    invoke-virtual {p0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1;

    invoke-direct {v2, v1}, Lcom/android/systemui/animation/RemoteTransitionAdapter$Companion$adaptRemoteRunner$1;-><init>(Landroid/view/IRemoteAnimationRunner;)V

    invoke-virtual {p0}, Landroid/view/RemoteAnimationAdapter;->getCallingApplication()Landroid/app/IApplicationThread;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;)V

    invoke-static {v0}, Landroid/app/ActivityOptions;->makeRemoteTransition(Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public static getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .locals 3

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public static viewInfo(Landroid/view/ViewGroup;)Ljava/lang/String;
    .locals 3

    const-string v0, "[("

    invoke-static {v0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract acquireGestureWakeLock()V
.end method

.method public abstract animateCollapsePanels(IZ)V
.end method

.method public abstract animateExpandNotificationsPanel()V
.end method

.method public abstract animateExpandSettingsPanel(Ljava/lang/String;)V
.end method

.method public abstract animateKeyguardUnoccluding()V
.end method

.method public abstract areNotificationAlertsDisabled()Z
.end method

.method public abstract awakenDreams()V
.end method

.method public abstract checkBarModes()V
.end method

.method public abstract clearNotificationEffects()V
.end method

.method public abstract clearTransient()V
.end method

.method public abstract collapsePanelOnMainThread()V
.end method

.method public abstract collapsePanelWithDuration(I)V
.end method

.method public abstract collapseShade()V
.end method

.method public abstract dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V
.end method

.method public abstract dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
.end method

.method public abstract endAffordanceLaunch()V
.end method

.method public abstract executeRunnableDismissingKeyguard(Ljava/lang/Runnable;ZZZ)V
.end method

.method public abstract extendDozePulse()V
.end method

.method public abstract fadeKeyguardAfterLaunchTransition(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end method

.method public abstract fadeKeyguardWhilePulsing()V
.end method

.method public abstract finishKeyguardFadingAway()V
.end method

.method public abstract getAmbientIndicationContainer()Landroid/view/View;
.end method

.method public abstract getBarMode()I
.end method

.method public abstract getBouncerContainer()Landroid/view/ViewGroup;
.end method

.method public abstract getDisabled1()I
.end method

.method public abstract getDisabled2()I
.end method

.method public abstract getDisplayDensity()F
.end method

.method public abstract getDisplayHeight()F
.end method

.method public abstract getDisplayId()I
.end method

.method public abstract getDisplayWidth()F
.end method

.method public abstract getEmergencyActionIntent()Landroid/content/Intent;
.end method

.method public abstract getGestureRecorder()V
.end method

.method public abstract getGutsManager()Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;
.end method

.method public abstract getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.end method

.method public abstract getLightRevealScrim()Lcom/android/systemui/statusbar/LightRevealScrim;
.end method

.method public abstract getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;
.end method

.method public abstract getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end method

.method public abstract getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;
.end method

.method public abstract getNotificationShadeWindowViewController()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;
.end method

.method public abstract getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end method

.method public abstract getPresenter()Lcom/android/systemui/statusbar/NotificationPresenter;
.end method

.method public abstract getQSPanelController()Lcom/android/systemui/qs/QSPanelController;
.end method

.method public abstract getRotation()I
.end method

.method public abstract getStatusBarHeight()I
.end method

.method public abstract hideKeyguard()Z
.end method

.method public abstract instantCollapseNotificationPanel()V
.end method

.method public abstract interceptMediaKey(Landroid/view/KeyEvent;)Z
.end method

.method public abstract isBouncerShowing()Z
.end method

.method public abstract isBouncerShowingOverDream()Z
.end method

.method public abstract isBouncerShowingScrimmed()Z
.end method

.method public abstract isCameraAllowedByAdmin()Z
.end method

.method public abstract isDeviceInVrMode()Z
.end method

.method public abstract isDeviceInteractive()Z
.end method

.method public abstract isFalsingThresholdNeeded()V
.end method

.method public abstract isGoingToSleep()Z
.end method

.method public abstract isInLaunchTransition()Z
.end method

.method public abstract isKeyguardShowing()Z
.end method

.method public abstract isLaunchingActivityOverLockscreen()Z
.end method

.method public abstract isOccluded()Z
.end method

.method public abstract isOverviewEnabled$1()Z
.end method

.method public abstract isPanelExpanded()Z
.end method

.method public abstract isPulsing()Z
.end method

.method public abstract isShadeDisabled()Z
.end method

.method public abstract isWakeUpComingFromTouch()Z
.end method

.method public abstract keyguardGoingAway()V
.end method

.method public abstract makeExpandedVisible(Z)V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onBouncerPreHideAnimation()V
.end method

.method public abstract onCameraHintStarted()V
.end method

.method public abstract onClosingFinished()V
.end method

.method public abstract onHintFinished()V
.end method

.method public abstract onInputFocusTransfer(FZZ)V
.end method

.method public abstract onKeyguardViewManagerStatesUpdated()V
.end method

.method public abstract onLaunchAnimationCancelled(Z)V
.end method

.method public abstract onLaunchAnimationEnd(Z)V
.end method

.method public abstract onMenuPressed()Z
.end method

.method public abstract onPhoneHintStarted()V
.end method

.method public abstract onSpacePressed()Z
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract onTrackingStarted()V
.end method

.method public abstract onTrackingStopped()V
.end method

.method public abstract onUnlockHintStarted()V
.end method

.method public abstract onVoiceAssistHintStarted()V
.end method

.method public abstract postAnimateCollapsePanels()V
.end method

.method public abstract postAnimateForceCollapsePanels()V
.end method

.method public abstract postAnimateOpenPanels()V
.end method

.method public abstract postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V
.end method

.method public abstract postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
.end method

.method public abstract postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
.end method

.method public abstract postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
.end method

.method public abstract postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
.end method

.method public abstract readyForKeyguardDone()V
.end method

.method public abstract requestFaceAuth(Z)V
.end method

.method public abstract requestNotificationUpdate()V
.end method

.method public abstract resendMessage()V
.end method

.method public abstract resendMessage(Lcom/android/systemui/statusbar/phone/CentralSurfaces$KeyboardShortcutsMessage;)V
.end method

.method public abstract resetUserExpandedStates()V
.end method

.method public abstract setAppearance(I)Z
.end method

.method public abstract setBarStateForTest(I)V
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end method

.method public abstract setBouncerHiddenFraction(F)V
.end method

.method public abstract setBouncerShowing(Z)V
.end method

.method public abstract setDisabled1(I)V
.end method

.method public abstract setDisabled2(I)V
.end method

.method public abstract setInteracting(IZ)V
.end method

.method public abstract setKeyguardFadingAway(JJJZ)V
.end method

.method public abstract setLastCameraLaunchSource(I)V
.end method

.method public abstract setLaunchCameraOnFinishedGoingToSleep()V
.end method

.method public abstract setLaunchCameraOnFinishedWaking()V
.end method

.method public abstract setLaunchEmergencyActionOnFinishedGoingToSleep()V
.end method

.method public abstract setLaunchEmergencyActionOnFinishedWaking()V
.end method

.method public abstract setLockscreenUser(I)V
.end method

.method public abstract setNotificationSnoozed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
.end method

.method public abstract setPanelExpanded(Z)V
.end method

.method public abstract setQsExpanded(Z)V
.end method

.method public abstract setQsScrimEnabled(Z)V
.end method

.method public abstract setTransitionToFullShadeProgress(F)V
.end method

.method public abstract shouldAnimateLaunch(Z)Z
.end method

.method public abstract shouldIgnoreTouch()Z
.end method

.method public abstract showBouncerWithDimissAndCancelIfKeyguard(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$goToLockedShadeInternal$1;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$goToLockedShadeInternal$cancelHandler$1;)V
.end method

.method public abstract showKeyguard()V
.end method

.method public abstract showPinningEnterExitToast(Z)V
.end method

.method public abstract showPinningEscapeToast()V
.end method

.method public abstract showScreenPinningRequest(IZ)V
.end method

.method public abstract showTransientUnchecked()V
.end method

.method public abstract showWirelessChargingAnimation(I)V
.end method

.method public abstract startActivity(Landroid/content/Intent;Z)V
.end method

.method public abstract startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)V
.end method

.method public abstract startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLandroid/os/UserHandle;)V
.end method

.method public abstract startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
.end method

.method public abstract startActivity(Landroid/content/Intent;ZZ)V
.end method

.method public abstract startActivity(Landroid/content/Intent;ZZI)V
.end method

.method public abstract startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Landroid/os/UserHandle;)V
.end method

.method public abstract startLaunchTransitionTimeout()V
.end method

.method public abstract startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
.end method

.method public abstract startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V
.end method

.method public abstract startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V
.end method

.method public abstract startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
.end method

.method public abstract togglePanel()V
.end method

.method public abstract updateBubblesVisibility()V
.end method

.method public abstract updateIsKeyguard()Z
.end method

.method public abstract updateIsKeyguard(Z)Z
.end method

.method public abstract updateNotificationPanelTouchState()V
.end method

.method public abstract updateQsExpansionEnabled()V
.end method

.method public abstract updateScrimController()V
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end method

.method public abstract userActivity()V
.end method

.method public abstract visibilityChanged(Z)V
.end method

.method public abstract wakeUpForFullScreenIntent()V
.end method

.method public abstract wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V
.end method
