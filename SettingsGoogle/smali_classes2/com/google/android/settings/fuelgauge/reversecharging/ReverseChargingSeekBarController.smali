.class public Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarController;
.super Lcom/android/settings/core/SliderPreferenceController;
.source "ReverseChargingSeekBarController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field public static final BASE_LEVEL_TIMES:I = 0x5

.field public static final MAX_SEEKBAR_VALUE:I = 0xa

.field public static final MIN_SEEKBAR_VALUE:I = 0x2


# instance fields
.field mIsPreferenceChanged:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mIsSliderPositionChanged:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPreference:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mReverseChargingManager:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarController;->mIsSliderPositionChanged:Z

    invoke-static {p1}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->getInstance(Landroid/content/Context;)Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarController;->mReverseChargingManager:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarPreference;

    iput-object p1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarController;->mPreference:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setContinuousUpdates(Z)V

    iget-object p1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarController;->mPreference:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarPreference;

    invoke-virtual {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarController;->getMax()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    iget-object p1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarController;->mPreference:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarPreference;

    invoke-virtual {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarController;->getMin()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SeekBarPreference;->setMin(I)V

    iget-object p1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarController;->mPreference:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarPreference;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setHapticFeedbackMode(I)V

    invoke-virtual {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarController;->getSliderPosition()I

    move-result p1

    mul-int/lit8 p1, p1, 0x5

    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarController;->mPreference:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarPreference;

    invoke-static {p1}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->overrideSeekBarStateDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarController;->mReverseChargingManager:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    invoke-static {v0, p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingUtils;->getAvailability(Landroid/content/Context;Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getMax()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public getMin()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public getSliderPosition()I
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "advanced_battery_usage_amount"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0x5

    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarController;->mPreference:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarPreference;

    invoke-static {p1}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarPreference;->setPercentageValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarController;->mPreference:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarPreference;

    invoke-static {p1}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SeekBarPreference;->overrideSeekBarStateDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarController;->setSliderPosition(I)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarController;->mIsPreferenceChanged:Z

    return p1
.end method

.method public onStop()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarController;->mIsPreferenceChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarController;->getSliderPosition()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    invoke-static {v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->logLowBatteryThresholdChange(I)V

    iput-boolean v1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarController;->mIsPreferenceChanged:Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarController;->mIsSliderPositionChanged:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarController;->mIsSliderPositionChanged:Z

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0x6f7

    invoke-virtual {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarController;->getSliderPosition()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    :cond_1
    return-void
.end method

.method public setSliderPosition(I)Z
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingSeekBarController;->mIsSliderPositionChanged:Z

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "advanced_battery_usage_amount"

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
