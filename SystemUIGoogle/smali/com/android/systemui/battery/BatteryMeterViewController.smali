.class public Lcom/android/systemui/battery/BatteryMeterViewController;
.super Lcom/android/systemui/util/ViewController;
.source "BatteryMeterViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/battery/BatteryMeterView;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private mIgnoreTunerUpdates:Z

.field private mIsSubscribedForTunerUpdates:Z

.field private final mSettingObserver:Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;

.field private final mSlotBattery:Ljava/lang/String;

.field private final mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/battery/BatteryMeterView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Landroid/content/ContentResolver;Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance p1, Lcom/android/systemui/battery/BatteryMeterViewController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/battery/BatteryMeterViewController$1;-><init>(Lcom/android/systemui/battery/BatteryMeterViewController;)V

    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    new-instance p1, Lcom/android/systemui/battery/BatteryMeterViewController$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/battery/BatteryMeterViewController$2;-><init>(Lcom/android/systemui/battery/BatteryMeterViewController;)V

    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

    new-instance p1, Lcom/android/systemui/battery/BatteryMeterViewController$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/battery/BatteryMeterViewController$3;-><init>(Lcom/android/systemui/battery/BatteryMeterViewController;)V

    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    iput-object p2, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p3, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iput-object p6, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p7, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/battery/BatteryMeterView;

    invoke-static {p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/systemui/battery/BatteryMeterViewController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p7}, Lcom/android/systemui/battery/BatteryMeterViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/battery/BatteryMeterView;->setBatteryEstimateFetcher(Lcom/android/systemui/battery/BatteryMeterView$BatteryEstimateFetcher;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x104081b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSlotBattery:Ljava/lang/String;

    new-instance p1, Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;

    invoke-direct {p1, p0, p5}, Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;-><init>(Lcom/android/systemui/battery/BatteryMeterViewController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingObserver:Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;

    new-instance p1, Lcom/android/systemui/battery/BatteryMeterViewController$4;

    invoke-direct {p1, p0, p4, p6}, Lcom/android/systemui/battery/BatteryMeterViewController$4;-><init>(Lcom/android/systemui/battery/BatteryMeterViewController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/ContentResolver;)V

    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/battery/BatteryMeterViewController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSlotBattery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/battery/BatteryMeterViewController;)Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingObserver:Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/battery/BatteryMeterViewController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/battery/BatteryMeterViewController;->registerShowBatteryPercentObserver(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method private registerGlobalBatteryUpdateObserver()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "battery_estimates_last_update_time"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingObserver:Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerShowBatteryPercentObserver(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "status_bar_show_battery_percent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingObserver:Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private subscribeForTunerUpdates()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mIsSubscribedForTunerUpdates:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mIgnoreTunerUpdates:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

    const-string v2, "icon_blacklist"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mIsSubscribedForTunerUpdates:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private unsubscribeFromTunerUpdates()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mIsSubscribedForTunerUpdates:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mIsSubscribedForTunerUpdates:Z

    return-void
.end method


# virtual methods
.method public ignoreTunerUpdates()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mIgnoreTunerUpdates:Z

    invoke-direct {p0}, Lcom/android/systemui/battery/BatteryMeterViewController;->unsubscribeFromTunerUpdates()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/systemui/battery/BatteryMeterViewController;->subscribeForTunerUpdates()V

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/battery/BatteryMeterViewController;->registerShowBatteryPercentObserver(I)V

    invoke-direct {p0}, Lcom/android/systemui/battery/BatteryMeterViewController;->registerGlobalBatteryUpdateObserver()V

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->updateShowPercent()V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/systemui/battery/BatteryMeterViewController;->unsubscribeFromTunerUpdates()V

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingObserver:Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
