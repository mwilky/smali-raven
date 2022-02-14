.class final Lcom/android/server/display/DisplayModeDirector$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultPeakRefreshRate:F

.field private mDefaultRefreshRate:F

.field private final mLowPowerModeSetting:Landroid/net/Uri;

.field private final mMatchContentFrameRateSetting:Landroid/net/Uri;

.field private final mMinRefreshRateSetting:Landroid/net/Uri;

.field private final mPeakRefreshRateSetting:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    nop

    const-string/jumbo v0, "peak_refresh_rate"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mPeakRefreshRateSetting:Landroid/net/Uri;

    nop

    const-string/jumbo v0, "min_refresh_rate"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMinRefreshRateSetting:Landroid/net/Uri;

    nop

    const-string/jumbo v0, "low_power"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    nop

    const-string/jumbo v0, "match_content_frame_rate"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMatchContentFrameRateSetting:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    nop

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(FFF)V

    return-void
.end method

.method private updateLowPowerModeSettingLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    move v0, v2

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/16 v3, 0x8

    invoke-static {v2, v3, v1}, Lcom/android/server/display/DisplayModeDirector;->access$800(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->access$200(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onLowPowerModeEnabledLocked(Z)V

    return-void
.end method

.method private updateModeSwitchingTypeSettingLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$900(Lcom/android/server/display/DisplayModeDirector;)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v2

    const-string/jumbo v3, "match_content_frame_rate"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->access$900(Lcom/android/server/display/DisplayModeDirector;)I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2, v1}, Lcom/android/server/display/DisplayModeDirector;->access$902(Lcom/android/server/display/DisplayModeDirector;I)I

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->access$1000(Lcom/android/server/display/DisplayModeDirector;)V

    :cond_0
    return-void
.end method

.method private updateRefreshRateSettingLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    nop

    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    const-string/jumbo v2, "min_refresh_rate"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    iget v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v3

    const-string/jumbo v4, "peak_refresh_rate"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v2

    iget v3, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(FFF)V

    return-void
.end method

.method private updateRefreshRateSettingLocked(FFF)V
    .locals 6

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    :goto_0
    nop

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v4, 0x7

    invoke-static {v3, v4, v1}, Lcom/android/server/display/DisplayModeDirector;->access$800(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v4, 0x3

    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {p1, v5}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/server/display/DisplayModeDirector;->access$800(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    cmpl-float v3, p3, v0

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0, p3}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v2

    :goto_1
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/server/display/DisplayModeDirector;->access$800(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    cmpl-float v3, p2, v0

    if-nez v3, :cond_2

    cmpl-float v3, p3, v0

    if-nez v3, :cond_2

    const-string v0, "DisplayModeDirector"

    const-string v3, "Default and peak refresh rates are both 0. One of them should be set to a valid value."

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p1

    goto :goto_2

    :cond_2
    cmpl-float v3, p2, v0

    if-nez v3, :cond_3

    move v0, p3

    goto :goto_2

    :cond_3
    cmpl-float v0, p3, v0

    if-nez v0, :cond_4

    move v0, p2

    goto :goto_2

    :cond_4
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_2
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector;->access$200(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onRefreshRateSettingChangedLocked(FF)V

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "  SettingsObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDefaultRefreshRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDefaultPeakRefreshRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public observe()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$500(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$Injector;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/android/server/display/DisplayModeDirector$Injector;->registerPeakRefreshRateObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMinRefreshRateSetting:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMatchContentFrameRateSetting:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$600(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getDefaultPeakRefreshRate()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->access$700(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateLowPowerModeSettingLocked()V

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateModeSwitchingTypeSettingLocked()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$700(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mPeakRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMinRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateLowPowerModeSettingLocked()V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMatchContentFrameRateSetting:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateModeSwitchingTypeSettingLocked()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDeviceConfigDefaultPeakRefreshRateChanged(Ljava/lang/Float;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$700(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public setDefaultRefreshRate(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$700(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
