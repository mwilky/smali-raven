.class public final Lcom/android/keyguard/AnimatableClockController;
.super Lcom/android/systemui/util/ViewController;
.source "AnimatableClockController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/keyguard/AnimatableClockView;",
        ">;"
    }
.end annotation


# instance fields
.field public final mBatteryCallback:Lcom/android/keyguard/AnimatableClockController$1;

.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mBurmeseLineSpacing:F

.field public final mBurmeseNumerals:Ljava/lang/String;

.field public final mDefaultLineSpacing:F

.field public mDozeAmount:F

.field public mIsCharging:Z

.field public mIsDozing:Z

.field public mKeyguardShowing:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/AnimatableClockController$4;

.field public mLocale:Ljava/util/Locale;

.field public final mLocaleBroadcastReceiver:Lcom/android/keyguard/AnimatableClockController$2;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mStatusBarStateListener:Lcom/android/keyguard/AnimatableClockController$3;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/AnimatableClockView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const-string p1, "my"

    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object p1

    new-instance v0, Lcom/android/keyguard/AnimatableClockController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/AnimatableClockController$1;-><init>(Lcom/android/keyguard/AnimatableClockController;)V

    iput-object v0, p0, Lcom/android/keyguard/AnimatableClockController;->mBatteryCallback:Lcom/android/keyguard/AnimatableClockController$1;

    new-instance v0, Lcom/android/keyguard/AnimatableClockController$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/AnimatableClockController$2;-><init>(Lcom/android/keyguard/AnimatableClockController;)V

    iput-object v0, p0, Lcom/android/keyguard/AnimatableClockController;->mLocaleBroadcastReceiver:Lcom/android/keyguard/AnimatableClockController$2;

    new-instance v0, Lcom/android/keyguard/AnimatableClockController$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/AnimatableClockController$3;-><init>(Lcom/android/keyguard/AnimatableClockController;)V

    iput-object v0, p0, Lcom/android/keyguard/AnimatableClockController;->mStatusBarStateListener:Lcom/android/keyguard/AnimatableClockController$3;

    new-instance v0, Lcom/android/keyguard/AnimatableClockController$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/AnimatableClockController$4;-><init>(Lcom/android/keyguard/AnimatableClockController;)V

    iput-object v0, p0, Lcom/android/keyguard/AnimatableClockController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/AnimatableClockController$4;

    iput-object p2, p0, Lcom/android/keyguard/AnimatableClockController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p3, p0, Lcom/android/keyguard/AnimatableClockController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p5, p0, Lcom/android/keyguard/AnimatableClockController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p4, p0, Lcom/android/keyguard/AnimatableClockController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    const-wide/32 p2, 0x499602d2

    invoke-virtual {p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/AnimatableClockController;->mBurmeseNumerals:Ljava/lang/String;

    const p1, 0x7f0702a1

    invoke-virtual {p6, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/keyguard/AnimatableClockController;->mBurmeseLineSpacing:F

    const p1, 0x7f0702a0

    invoke-virtual {p6, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/keyguard/AnimatableClockController;->mDefaultLineSpacing:F

    return-void
.end method


# virtual methods
.method public final animateFoldAppear()V
    .locals 13

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/AnimatableClockView;

    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockView;->textAnimator:Lcom/android/keyguard/TextAnimator;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/keyguard/AnimatableClockView;->lockScreenWeightInternal:I

    iget v0, p0, Lcom/android/keyguard/AnimatableClockView;->lockScreenColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v6, 0x0

    const/4 v11, 0x0

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/keyguard/AnimatableClockView;->setTextStyle(ILjava/lang/Integer;ZJJLcom/android/keyguard/AnimatableClockView$animateCharge$startAnimPhase2$1;)V

    iget v1, p0, Lcom/android/keyguard/AnimatableClockView;->dozingWeightInternal:I

    iget v0, p0, Lcom/android/keyguard/AnimatableClockView;->dozingColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v12, 0x1

    sget-object v6, Lcom/android/systemui/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/PathInterpolator;

    const-wide/16 v2, 0x258

    move-object v0, p0

    move-wide v4, v9

    move-object v8, v11

    move v9, v12

    invoke-virtual/range {v0 .. v9}, Lcom/android/keyguard/AnimatableClockView;->setTextStyle(IJJLandroid/view/animation/PathInterpolator;Ljava/lang/Integer;Lcom/android/keyguard/AnimatableClockView$animateCharge$startAnimPhase2$1;Z)V

    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/AnimatableClockView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "    measuredWidth="

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "    measuredHeight="

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/keyguard/AnimatableClockView;->isSingleLineInternal:Z

    const-string v1, "    singleLineInternal="

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(ZLjava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockView;->lastMeasureCall:Ljava/lang/CharSequence;

    const-string v1, "    lastMeasureCall="

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "    currText="

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "    currTimeContextDesc="

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/keyguard/AnimatableClockView;->time:Ljava/util/Calendar;

    const-string v0, "    time="

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isDozing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/AnimatableClockController;->mIsDozing:Z

    return p0
.end method

.method public final onInit()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/AnimatableClockController;->mIsDozing:Z

    return-void
.end method

.method public final onViewAttached()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/AnimatableClockController;->updateLocale()V

    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/keyguard/AnimatableClockController;->mLocaleBroadcastReceiver:Lcom/android/keyguard/AnimatableClockController$2;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getDozeAmount()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/AnimatableClockController;->mDozeAmount:F

    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/keyguard/AnimatableClockController;->mDozeAmount:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/keyguard/AnimatableClockController;->mIsDozing:Z

    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v2, p0, Lcom/android/keyguard/AnimatableClockController;->mBatteryCallback:Lcom/android/keyguard/AnimatableClockController$1;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/keyguard/AnimatableClockController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/AnimatableClockController$4;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v2, p0, Lcom/android/keyguard/AnimatableClockController;->mStatusBarStateListener:Lcom/android/keyguard/AnimatableClockController$3;

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/AnimatableClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/AnimatableClockView;->refreshTime()V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f040604

    invoke-static {v0, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/AnimatableClockView;

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/keyguard/AnimatableClockView;->dozingColor:I

    iput v0, v2, Lcom/android/keyguard/AnimatableClockView;->lockScreenColor:I

    iget-boolean v0, p0, Lcom/android/keyguard/AnimatableClockController;->mIsDozing:Z

    invoke-virtual {v2, v0, v1}, Lcom/android/keyguard/AnimatableClockView;->animateDoze(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/AnimatableClockView;

    iget-boolean p0, p0, Lcom/android/keyguard/AnimatableClockController;->mIsDozing:Z

    invoke-virtual {v0, p0, v1}, Lcom/android/keyguard/AnimatableClockView;->animateDoze(ZZ)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/keyguard/AnimatableClockController;->mLocaleBroadcastReceiver:Lcom/android/keyguard/AnimatableClockController$2;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/AnimatableClockController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/AnimatableClockController$4;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v1, p0, Lcom/android/keyguard/AnimatableClockController;->mBatteryCallback:Lcom/android/keyguard/AnimatableClockController$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p0, p0, Lcom/android/keyguard/AnimatableClockController;->mStatusBarStateListener:Lcom/android/keyguard/AnimatableClockController$3;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method public final updateLocale()V
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/AnimatableClockController;->mLocale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/android/keyguard/AnimatableClockController;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    const-wide/32 v1, 0x499602d2

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/AnimatableClockController;->mBurmeseNumerals:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/AnimatableClockView;

    iget v2, p0, Lcom/android/keyguard/AnimatableClockController;->mBurmeseLineSpacing:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/AnimatableClockView;

    iget v2, p0, Lcom/android/keyguard/AnimatableClockController;->mDefaultLineSpacing:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/AnimatableClockView;

    invoke-virtual {p0}, Lcom/android/keyguard/AnimatableClockView;->refreshFormat()V

    :cond_1
    return-void
.end method
