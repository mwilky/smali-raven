.class public Lcom/android/systemui/statusbar/FeatureFlags;
.super Ljava/lang/Object;
.source "FeatureFlags.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;


# direct methods
.method public constructor <init>(Lcom/android/systemui/flags/FeatureFlagReader;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    iput-object p2, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isChargingRippleEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_charging_ripple:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isCombinedStatusBarSignalIconsEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_combined_status_bar_signal_icons:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isKeyguardLayoutEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_keyguard_layout:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isMonetEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_monet:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isNewKeyguardSwipeAnimationEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_new_unlock_swipe_animation:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isNewNotifPipelineEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_notification_pipeline2:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isNewNotifPipelineRenderingEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_notification_pipeline2_rendering:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isOngoingCallStatusBarChipEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_ongoing_call_status_bar_chip:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isPMLiteEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_pm_lite:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isProviderModelSettingEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mContext:Landroid/content/Context;

    const-string v0, "settings_provider_model"

    invoke-static {p0, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSmartSpaceSharedElementTransitionEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_smartspace_shared_element_transition:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isSmartspaceDedupingEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/FeatureFlags;->isSmartspaceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_smartspace_deduping:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSmartspaceEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_smartspace:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isTwoColumnNotificationShadeEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_notification_twocolumn:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public useNewLockscreenAnimations()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_lockscreen_animations:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method
