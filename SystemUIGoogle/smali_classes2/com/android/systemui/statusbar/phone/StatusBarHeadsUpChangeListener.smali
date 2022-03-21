.class public Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;
.super Ljava/lang/Object;
.source "StatusBarHeadsUpChangeListener.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# instance fields
.field private final mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field private final mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field private final mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field private final mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;


# direct methods
.method public static synthetic $r8$lambda$LhQvxFVJX9dVfLZY0L5xSuo6yQ8(Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->lambda$onHeadsUpPinnedModeChanged$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$VHPlAtYdWdVbBlepCukd9JElOfM(Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->lambda$onHeadsUpPinnedModeChanged$1()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    return-void
.end method

.method private synthetic lambda$onHeadsUpPinnedModeChanged$0()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setForceWindowCollapsed(Z)V

    return-void
.end method

.method private synthetic lambda$onHeadsUpPinnedModeChanged$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setHeadsUpShowing(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setHeadsUpGoingAway(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->onPanelCollapsed()V

    return-void
.end method


# virtual methods
.method public onHeadsUpPinnedModeChanged(Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setHeadsUpShowing(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->setForceStatusBarVisible(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setForceWindowCollapsed(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    if-ne p1, v0, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isTracking()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setHeadsUpGoingAway(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setHeadsUpShowing(Z)V

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->setForceStatusBarVisible(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    const-string v1, "onHeadsUpStateChanged"

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->requestNotificationUpdate(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setPulseSuppressed(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->fireNotificationPulse(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->isPulsing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->cancelPendingPulseTimeout()V

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->hasNotifications()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseOutNow()V

    :cond_1
    return-void
.end method
