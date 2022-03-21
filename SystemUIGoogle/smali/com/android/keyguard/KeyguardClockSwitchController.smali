.class public Lcom/android/keyguard/KeyguardClockSwitchController;
.super Lcom/android/systemui/util/ViewController;
.source "KeyguardClockSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/keyguard/KeyguardClockSwitch;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mCanShowDoubleLineClock:Z

.field private final mClockChangedListener:Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

.field private mClockFrame:Landroid/widget/FrameLayout;

.field private final mClockManager:Lcom/android/keyguard/clock/ClockManager;

.field private mClockViewController:Lcom/android/keyguard/AnimatableClockController;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mColorsListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

.field private mDoubleLineClockObserver:Landroid/database/ContentObserver;

.field private mKeyguardClockTopMargin:I

.field private final mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

.field private final mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLargeClockFrame:Landroid/widget/FrameLayout;

.field private mLargeClockViewController:Lcom/android/keyguard/AnimatableClockController;

.field private final mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private mOnlyClock:Z

.field private final mResources:Landroid/content/res/Resources;

.field private final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field private final mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

.field private mSmartspaceTransitionController:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;

.field private mSmartspaceView:Landroid/view/View;

.field private mStatusArea:Landroid/view/ViewGroup;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mUiExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$9pd8dyQM9IARhXuJzXidUcAA8u0(Lcom/android/keyguard/KeyguardClockSwitchController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->lambda$updateDoubleLineClock$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$UrWEdx7JH8CB5fSj-Qe2DHy8aFQ(Lcom/android/keyguard/KeyguardClockSwitchController;Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardClockSwitchController;->lambda$new$0(Lcom/android/internal/colorextraction/ColorExtractor;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WROqc-LQ26KS_6ZIxhwwvSR1YVI(Lcom/android/keyguard/KeyguardClockSwitchController;Lcom/android/systemui/plugins/ClockPlugin;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController;->setClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardClockSwitch;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/keyguard/clock/ClockManager;Lcom/android/keyguard/KeyguardSliceViewController;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;Lcom/android/systemui/util/settings/SecureSettings;Ljava/util/concurrent/Executor;Landroid/content/res/Resources;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardClockTopMargin:I

    new-instance v2, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardClockSwitchController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mColorsListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    new-instance v2, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardClockSwitchController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockChangedListener:Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mOnlyClock:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mCanShowDoubleLineClock:Z

    new-instance v1, Lcom/android/keyguard/KeyguardClockSwitchController$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$1;-><init>(Lcom/android/keyguard/KeyguardClockSwitchController;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDoubleLineClockObserver:Landroid/database/ContentObserver;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockManager:Lcom/android/keyguard/clock/ClockManager;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mResources:Landroid/content/res/Resources;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mUiExecutor:Ljava/util/concurrent/Executor;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceTransitionController:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardClockSwitchController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->updateDoubleLineClock()V

    return-void
.end method

.method private getCurrentLayoutDirection()I
    .locals 0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    return p0
.end method

.method private getGradientColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 0

    and-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->getGradientColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardClockSwitch;->updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateDoubleLineClock$1()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardClockSwitchController;->displayClock(I)V

    return-void
.end method

.method private setClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/keyguard/KeyguardClockSwitch;->setClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;I)V

    return-void
.end method

.method private updateAodIcons()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    sget v1, Lcom/android/systemui/R$id;->left_aligned_notification_icon_container:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setupAodIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    return-void
.end method

.method private updateClockLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_large_clock_top_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateDoubleLineClock()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v1, "lockscreen_use_double_line_clock"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mCanShowDoubleLineClock:Z

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mUiExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardClockSwitchController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayClock(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mCanShowDoubleLineClock:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->switchToClock(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockViewController:Lcom/android/keyguard/AnimatableClockController;

    invoke-virtual {p0}, Lcom/android/keyguard/AnimatableClockController;->animateAppear()V

    :cond_1
    return-void
.end method

.method getClockBottom(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockFrame:Landroid/widget/FrameLayout;

    sget v0, Lcom/android/systemui/R$id;->animatable_clock_view_large:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockFrame:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->animatable_clock_view:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, p1

    iget p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardClockTopMargin:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getClockTextSize()F
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->getTextSize()F

    move-result p0

    return p0
.end method

.method getNotificationIconAreaHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getHeight()I

    move-result p0

    return p0
.end method

.method public hasCustomClock()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->hasCustomClock()Z

    move-result p0

    return p0
.end method

.method isClockTopAligned()Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardClockSwitch;->onDensityOrFontScaleChanged()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_clock_top_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardClockTopMargin:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->updateClockLayout()V

    return-void
.end method

.method public onInit()V
    .locals 15

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    sget v1, Lcom/android/systemui/R$id;->lockscreen_clock_view:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    sget v1, Lcom/android/systemui/R$id;->lockscreen_clock_view_large:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockFrame:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/android/keyguard/AnimatableClockController;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardClockSwitch;

    sget v2, Lcom/android/systemui/R$id;->animatable_clock_view:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/keyguard/AnimatableClockView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mResources:Landroid/content/res/Resources;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/keyguard/AnimatableClockController;-><init>(Lcom/android/keyguard/AnimatableClockView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockViewController:Lcom/android/keyguard/AnimatableClockController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    new-instance v0, Lcom/android/keyguard/AnimatableClockController;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardClockSwitch;

    sget v2, Lcom/android/systemui/R$id;->animatable_clock_view_large:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/keyguard/AnimatableClockView;

    iget-object v10, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v11, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v12, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v13, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v14, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mResources:Landroid/content/res/Resources;

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/keyguard/AnimatableClockController;-><init>(Lcom/android/keyguard/AnimatableClockView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockViewController:Lcom/android/keyguard/AnimatableClockController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockManager:Lcom/android/keyguard/clock/ClockManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockChangedListener:Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/ClockManager;->addOnClockChangedListener(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mColorsListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->getGradientColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardClockSwitch;->updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_clock_top_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardClockTopMargin:I

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mOnlyClock:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    sget v2, Lcom/android/systemui/R$id;->keyguard_slice_view:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitch;

    sget v0, Lcom/android/systemui/R$id;->left_aligned_notification_icon_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->updateAodIcons()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    sget v2, Lcom/android/systemui/R$id;->keyguard_status_area:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusArea:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->buildAndConnectView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    sget v3, Lcom/android/systemui/R$id;->keyguard_slice_view:I

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusArea:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusArea:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceView:Landroid/view/View;

    invoke-virtual {v1, v4, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->below_clock_padding_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->below_clock_padding_end:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceView:Landroid/view/View;

    invoke-virtual {v3, v0, v2, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->updateClockLayout()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceTransitionController:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->setLockscreenSmartspace(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v1, "lockscreen_use_double_line_clock"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDoubleLineClockObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->updateDoubleLineClock()V

    return-void
.end method

.method protected onViewDetached()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockManager:Lcom/android/keyguard/clock/ClockManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockChangedListener:Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/ClockManager;->removeOnClockChangedListener(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mColorsListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor;->removeOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/KeyguardClockSwitch;->setClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDoubleLineClockObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method refresh()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockViewController:Lcom/android/keyguard/AnimatableClockController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/AnimatableClockController;->refreshTime()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockViewController:Lcom/android/keyguard/AnimatableClockController;

    invoke-virtual {v0}, Lcom/android/keyguard/AnimatableClockController;->refreshTime()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->requestSmartspaceUpdate()V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->refresh()V

    return-void
.end method

.method refreshFormat()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockViewController:Lcom/android/keyguard/AnimatableClockController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/AnimatableClockController;->refreshFormat()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockViewController:Lcom/android/keyguard/AnimatableClockController;

    invoke-virtual {p0}, Lcom/android/keyguard/AnimatableClockController;->refreshFormat()V

    :cond_0
    return-void
.end method

.method public setChildrenAlphaExcluding(FLjava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setChildrenAlphaExcludingSmartspace(F)V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardClockSwitchController;->setChildrenAlphaExcluding(FLjava/util/Set;)V

    return-void
.end method

.method public setOnlyClock(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mOnlyClock:Z

    return-void
.end method

.method updatePosition(IFLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->getCurrentLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    neg-int p1, p1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockFrame:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->TRANSLATION_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    int-to-float p1, p1

    invoke-static {v0, v1, p1, p3, p4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockFrame:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->SCALE_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {v0, v2, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockFrame:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->SCALE_Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {v0, v2, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusArea:Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    invoke-static {p2, v1, p1, p3, p4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->isUnlockingWithSmartSpaceTransition()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->updateLockscreenSmartSpacePosition()V

    :cond_1
    return-void
.end method

.method updateTimeZone(Ljava/util/TimeZone;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockViewController:Lcom/android/keyguard/AnimatableClockController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/AnimatableClockController;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockViewController:Lcom/android/keyguard/AnimatableClockController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/AnimatableClockController;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    :cond_0
    return-void
.end method
