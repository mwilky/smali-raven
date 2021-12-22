.class public Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;
.super Ljava/lang/Object;
.source "HeadsUpAppearanceController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;


# instance fields
.field private mAnimationsEnabled:Z

.field mAppearFraction:F
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mCenteredIconView:Landroid/view/View;

.field private final mClockView:Landroid/view/View;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

.field mExpandedHeight:F
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private final mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

.field mIsExpanded:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private final mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field private final mOperatorNameView:Landroid/view/View;

.field private final mParentClippingParams:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

.field private final mSetExpandedHeight:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mSetTrackingHeadsUp:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation
.end field

.field private mShown:Z

.field private final mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mTrackedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private final mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;


# direct methods
.method public static synthetic $r8$lambda$BXEhQ3vdpFiKMeLhDV50EtgQep8(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Gjij-xct-my6tWXCMxJNjHMT9wc(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->lambda$setShown$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ss_MWmOpea8ASwFBwsWz_Wp4gA8(Landroid/view/View;ILjava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->lambda$hide$2(Landroid/view/View;ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xzV105t7YoGlJkRyZBYrukDOqO4(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->lambda$updateHeadsUpHeaders$3(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/HeadsUpStatusBarView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p5

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetTrackingHeadsUp:Ljava/util/function/Consumer;

    new-instance v7, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetExpandedHeight:Ljava/util/function/BiConsumer;

    new-instance v8, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$1;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mParentClippingParams:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mAnimationsEnabled:Z

    move-object v8, p1

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mCenteredIconView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setOnDrawingRectChangedListener(Ljava/lang/Runnable;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->addTrackingHeadsUpListener(Ljava/util/function/Consumer;)V

    invoke-virtual {v4, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->addOnExpandedHeightChangedListener(Ljava/util/function/BiConsumer;)V

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mClockView:Landroid/view/View;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mOperatorNameView:Landroid/view/View;

    const-class v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$2;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {p5, p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->addListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p10

    sget v1, Lcom/android/systemui/R$id;->heads_up_status_bar_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    sget v1, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    sget v1, Lcom/android/systemui/R$id;->operator_name_frame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    sget v1, Lcom/android/systemui/R$id;->centered_icon_area:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p3

    move-object/from16 v11, p9

    invoke-direct/range {v2 .. v15}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/HeadsUpStatusBarView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)Lcom/android/systemui/statusbar/HeadsUpStatusBarView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    return-object p0
.end method

.method private hide(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->hide(Landroid/view/View;ILjava/lang/Runnable;)V

    return-void
.end method

.method private hide(Landroid/view/View;ILjava/lang/Runnable;)V
    .locals 3

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mAnimationsEnabled:Z

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x6e

    const/4 p0, 0x0

    new-instance v2, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;ILjava/lang/Runnable;)V

    invoke-static {p1, v0, v1, p0, v2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;JILjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$hide$2(Landroid/view/View;ILjava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateIsolatedIconLocation(Z)V

    return-void
.end method

.method private synthetic lambda$setShown$1()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateParentClipping(Z)V

    return-void
.end method

.method private synthetic lambda$updateHeadsUpHeaders$3(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeader(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method private setShown(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mShown:Z

    if-eq v0, p1, :cond_5

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mShown:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateParentClipping(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->show(Landroid/view/View;)V
    
    const/4 v2, 0x4
    
    sget v3, Lcom/android/mwilky/Renovate;->mClockPosition:I
    
    if-eqz v3, :cond_stock
    
    goto :goto_mw

    :cond_stock
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mClockView:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->hide(Landroid/view/View;I)V

    :goto_mw
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mCenteredIconView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mCenteredIconView:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->hide(Landroid/view/View;I)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mOperatorNameView:Landroid/view/View;

    if-eqz p1, :cond_4

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->hide(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    sget v3, Lcom/android/mwilky/Renovate;->mClockPosition:I
    
    if-eqz v3, :cond_stock2
    
    goto :goto_mw2
    
    :cond_stock2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mClockView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->show(Landroid/view/View;)V

    :goto_mw2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mCenteredIconView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mCenteredIconView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->show(Landroid/view/View;)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mOperatorNameView:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->show(Landroid/view/View;)V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->hide(Landroid/view/View;ILjava/lang/Runnable;)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    :cond_5
    return-void
.end method

.method private show(Landroid/view/View;)V
    .locals 2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mAnimationsEnabled:Z

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x6e

    const/16 p0, 0x64

    invoke-static {p1, v0, v1, p0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;JI)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateHeadsUpHeaders()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->getAllEntries()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateIsolatedIconLocation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getIconDrawingRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setIsolatedIconLocation(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method private updateParentClipping(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mParentClippingParams:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    invoke-static {v0, p1, p0}, Lcom/android/internal/widget/ViewClippingUtil;->setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V

    return-void
.end method

.method private updateTopEntry()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getShowingEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    if-eq v0, v2, :cond_4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->setShown(Z)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    :goto_1
    xor-int/2addr v2, v3

    goto :goto_2

    :cond_1
    if-nez v2, :cond_2

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->setShown(Z)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_2
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateIsolatedIconLocation(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getStatusBarIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v1

    :goto_3
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->showIconIsolated(Lcom/android/systemui/statusbar/StatusBarIconView;Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setOnDrawingRectChangedListener(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->removeListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetTrackingHeadsUp:Ljava/util/function/Consumer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->removeTrackingHeadsUpListener(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setVerticalTranslationListener(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetExpandedHeight:Ljava/util/function/BiConsumer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->removeOnExpandedHeightChangedListener(Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public isShown()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mShown:Z

    return p0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    return-void
.end method

.method public onFullyHiddenChanged(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeader(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeader(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onStateChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    return-void
.end method

.method readFrom(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mTrackedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mTrackedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget v0, p1, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandedHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandedHeight:F

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    iget p1, p1, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mAppearFraction:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mAppearFraction:F

    :cond_0
    return-void
.end method

.method setAnimationsEnabled(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mAnimationsEnabled:Z

    return-void
.end method

.method public setAppearFraction(FF)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandedHeight:F

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandedHeight:F

    iput p2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mAppearFraction:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeadsUpHeaders()V

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    if-eq v1, p1, :cond_3

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    :cond_3
    return-void
.end method

.method public setTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mTrackedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mTrackedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeader(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    return-void
.end method

.method public shouldBeVisible()Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getNotificationsFullyHidden()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v4}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v4

    if-eq v4, v1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardGoingAway()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    move v2, v1

    :cond_2
    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1
.end method

.method public updateHeader(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mTrackedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eq p1, v0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mAppearFraction:F

    :goto_1
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeaderVisibleAmount(F)V

    return-void
.end method

.method public updateViews(F)V
    .registers 6
    .param p1, "f"    # F

    .line 161
    return-void
.end method
