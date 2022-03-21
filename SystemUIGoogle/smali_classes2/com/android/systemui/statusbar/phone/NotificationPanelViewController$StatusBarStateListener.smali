.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method


# virtual methods
.method public onDozeAmountChanged(FF)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6302(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardStatusViewController;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardStatusViewController;->setDarkAmount(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDarkAmount(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->goingToFullShade()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlUnlockedScreenOff()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v2, :cond_1

    if-ne p1, v4, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardStatusViewController;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    move-result-object v7

    iget v7, v7, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    move-result-object v8

    iget v8, v8, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockYFullyDozing:I

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    move-result-object v9

    iget v9, v9, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    invoke-virtual {v6, v7, v8, v9, v3}, Lcom/android/keyguard/KeyguardStatusViewController;->updatePosition(IIFZ)V

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardStatusViewController;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v7

    invoke-virtual {v6, p1, v1, v0, v7}, Lcom/android/keyguard/KeyguardStatusViewController;->setKeyguardStatusViewVisibility(IZZI)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v1, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;IZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5602(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9602(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    const/4 v1, 0x2

    if-ne v2, v4, :cond_4

    if-nez v0, :cond_2

    if-ne p1, v1, :cond_4

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getKeyguardFadingAwayDelay()J

    move-result-wide v6

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getShortenedFadingAwayDuration()J

    move-result-wide v8

    goto :goto_1

    :cond_3
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x168

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    move-result-object p1

    invoke-virtual {p1, v6, v7, v8, v9}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->animateKeyguardStatusBarOut(JJ)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    goto/16 :goto_4

    :cond_4
    if-ne v2, v1, :cond_5

    if-ne p1, v4, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->animateKeyguardStatusBarIn()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->resetScrollPosition()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->animateHeaderSlidingOut()V

    goto :goto_4

    :cond_5
    if-nez v2, :cond_6

    if-ne p1, v4, :cond_6

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isScreenOffAnimationPlaying()Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v4

    goto :goto_2

    :cond_6
    move p1, v3

    :goto_2
    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz v5, :cond_7

    move v6, v3

    goto :goto_3

    :cond_7
    const/4 v6, 0x4

    :goto_3
    invoke-virtual {p1, v0, v6}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateViewState(FI)V

    :cond_8
    if-eqz v5, :cond_9

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p1

    if-eq v2, p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->hideImmediately()V

    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateForHeadsUp()V

    if-eqz v5, :cond_a

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V

    :cond_a
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p0

    if-ne p0, v1, :cond_c

    :cond_b
    move v3, v4

    :cond_c
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->setShadeExpanded(Z)V

    return-void
.end method
