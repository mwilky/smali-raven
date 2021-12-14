.class public Lcom/android/keyguard/KeyguardStatusViewController;
.super Lcom/android/systemui/util/ViewController;
.source "KeyguardStatusViewController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/keyguard/KeyguardStatusView;",
        ">;"
    }
.end annotation


# static fields
.field private static final CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;


# instance fields
.field private final mClipBounds:Landroid/graphics/Rect;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

.field private final mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mKeyguardStateControllerCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

.field private final mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

.field private mSmartspaceTransitionController:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0x168

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardStatusViewController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardStatusView;Lcom/android/keyguard/KeyguardSliceViewController;Lcom/android/keyguard/KeyguardClockSwitchController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;)V
    .locals 8

    move-object v0, p0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mClipBounds:Landroid/graphics/Rect;

    new-instance v1, Lcom/android/keyguard/KeyguardStatusViewController$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardStatusViewController$1;-><init>(Lcom/android/keyguard/KeyguardStatusViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    new-instance v1, Lcom/android/keyguard/KeyguardStatusViewController$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardStatusViewController$2;-><init>(Lcom/android/keyguard/KeyguardStatusViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v1, Lcom/android/keyguard/KeyguardStatusViewController$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardStatusViewController$3;-><init>(Lcom/android/keyguard/KeyguardStatusViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStateControllerCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v4, p7

    iput-object v4, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object v3, p4

    iput-object v3, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    new-instance v7, Lcom/android/keyguard/KeyguardVisibilityHelper;

    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const/4 v6, 0x1

    move-object v1, v7

    move-object/from16 v5, p10

    invoke-direct/range {v1 .. v6}, Lcom/android/keyguard/KeyguardVisibilityHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Z)V

    iput-object v7, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mSmartspaceTransitionController:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardStatusViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->refreshTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardStatusViewController;)Lcom/android/keyguard/KeyguardClockSwitchController;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardStatusViewController;)Lcom/android/keyguard/KeyguardSliceViewController;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardStatusViewController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method private refreshTime()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->refresh()V

    return-void
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->refreshTime()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceViewController;->refresh()V

    return-void
.end method

.method public getClockBottom(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController;->getClockBottom(I)I

    move-result p0

    return p0
.end method

.method public getClockTextSize()F
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->getClockTextSize()F

    move-result p0

    return p0
.end method

.method public getLockscreenHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getHeight()I

    move-result v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->getNotificationIconAreaHeight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public hasCustomClock()Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->hasCustomClock()Z

    move-result p0

    return p0
.end method

.method public isClockTopAligned()Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->isClockTopAligned()Z

    move-result p0

    return p0
.end method

.method public onInit()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStateControllerCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStateControllerCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardVisibilityHelper;->isVisibilityAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->isUnlockingWithSmartSpaceTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardStatusView;->setChildrenAlphaExcludingClockView(F)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController;->setChildrenAlphaExcludingSmartspace(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardVisibilityHelper;->isVisibilityAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardStatusView;->getChildrenAlphaExcludingSmartSpace()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardStatusView;->setChildrenAlphaExcludingClockView(F)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardClockSwitchController;->setChildrenAlphaExcludingSmartspace(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setClipBounds(Landroid/graphics/Rect;)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mClipBounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v3}, Landroid/widget/GridLayout;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v4}, Landroid/widget/GridLayout;->getY()F

    move-result v4

    sub-float/2addr p1, v4

    float-to-int p1, p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardStatusView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/widget/GridLayout;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setClipBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public setDarkAmount(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->setDarkAmount(F)V

    return-void
.end method

.method public setHasVisibleNotifications(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController;->setHasVisibleNotifications(Z)V

    return-void
.end method

.method public setKeyguardStatusViewVisibility(IZZI)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardVisibilityHelper;->setViewVisibility(IZZI)V

    return-void
.end method

.method public setPivotX(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setPivotX(F)V

    return-void
.end method

.method public setPivotY(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setPivotY(F)V

    return-void
.end method

.method public setStatusAccessibilityImportance(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method public updatePosition(IIFZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    int-to-float p2, p2

    sget-object v2, Lcom/android/keyguard/KeyguardStatusViewController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {v0, v1, p2, v2, p4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0, p1, p3, v2, p4}, Lcom/android/keyguard/KeyguardClockSwitchController;->updatePosition(IFLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    return-void
.end method
