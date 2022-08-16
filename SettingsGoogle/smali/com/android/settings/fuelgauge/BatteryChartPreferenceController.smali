.class public Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BatteryChartPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;
.implements Lcom/android/settings/fuelgauge/BatteryChartView$OnSelectListener;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settings/fuelgauge/ExpandDividerPreference$OnExpandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask;
    }
.end annotation


# static fields
.field private static sUiMode:I


# instance fields
.field private final mActivity:Lcom/android/settings/SettingsActivity;

.field mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

.field mBatteryChartView:Lcom/android/settings/fuelgauge/BatteryChartView;

.field mBatteryHistoryKeys:[J

.field mBatteryHistoryLevels:[I

.field mBatteryIndexedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/BatteryDiffEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field mExpandDividerPreference:Lcom/android/settings/fuelgauge/ExpandDividerPreference;

.field private mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

.field private final mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private final mHandler:Landroid/os/Handler;

.field private mIs24HourFormat:Z

.field mIsExpanded:Z

.field private mIsFooterPrefAdded:Z

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mNotAllowShowEntryPackages:[Ljava/lang/CharSequence;

.field private final mNotAllowShowSummaryPackages:[Ljava/lang/CharSequence;

.field mPrefContext:Landroid/content/Context;

.field final mPreferenceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferenceKey:Ljava/lang/String;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field final mSystemEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/BatteryDiffEntry;",
            ">;"
        }
    .end annotation
.end field

.field mTrapezoidIndex:I


# direct methods
.method public static synthetic $r8$lambda$KLwUtu4q63inOfv6_K1ba4Sbi5E(Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;Ljava/util/List;Lcom/android/settings/fuelgauge/BatteryDiffEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->lambda$addAllPreferences$2(Ljava/util/List;Lcom/android/settings/fuelgauge/BatteryDiffEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NJGACk2rlsXzlDfLvZgP2qBiPnI(Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->lambda$addFooterPreferenceIfNeeded$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$rcZYqE5PUdwc156_rjVgXXNYydI(Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->lambda$refreshUi$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$urgxOW3hMB7t4DvDJED6YpZFQUc(Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;Lcom/android/settings/fuelgauge/BatteryChartView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->lambda$setBatteryChartView$0(Lcom/android/settings/fuelgauge/BatteryChartView;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mforceRefreshUi(Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->forceRefreshUi()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mIsExpanded:Z

    const/4 v1, -0x2

    iput v1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mTrapezoidIndex:I

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mIs24HourFormat:Z

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mIsFooterPrefAdded:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPreferenceCache:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mSystemEntries:Ljava/util/List;

    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iput-object p5, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mIs24HourFormat:Z

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getHideApplicationEntries(Landroid/content/Context;)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mNotAllowShowEntryPackages:[Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getHideApplicationSummary(Landroid/content/Context;)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mNotAllowShowSummaryPackages:[Ljava/lang/CharSequence;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private addAllPreferences()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mBatteryIndexedMap:Ljava/util/Map;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mTrapezoidIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-direct {p0, v3}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->addFooterPreferenceIfNeeded(Z)V

    const-string v3, "BatteryChartPreferenceController"

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot find BatteryDiffEntry for:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mTrapezoidIndex:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mSystemEntries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    new-instance v5, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v4}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;Ljava/util/List;)V

    invoke-interface {v0, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mSystemEntries:Ljava/util/List;

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mSystemEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "addAllPreferences() app=%d system=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->addPreferenceToScreen(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mSystemEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mExpandDividerPreference:Lcom/android/settings/fuelgauge/ExpandDividerPreference;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/ExpandDividerPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mExpandDividerPreference:Lcom/android/settings/fuelgauge/ExpandDividerPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->setOnExpandListener(Lcom/android/settings/fuelgauge/ExpandDividerPreference$OnExpandListener;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mExpandDividerPreference:Lcom/android/settings/fuelgauge/ExpandDividerPreference;

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mIsExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->setIsExpanded(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mExpandDividerPreference:Lcom/android/settings/fuelgauge/ExpandDividerPreference;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mExpandDividerPreference:Lcom/android/settings/fuelgauge/ExpandDividerPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->refreshExpandUi()V

    return-void
.end method

.method private addFooterPreferenceIfNeeded(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mIsFooterPrefAdded:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mIsFooterPrefAdded:Z

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const p1, 0x7f040439

    goto :goto_0

    :cond_1
    const p1, 0x7f04043a

    :goto_0
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private buildUsageTimeInfo(JZ)Ljava/lang/String;
    .locals 2

    const-wide/32 v0, 0xea60

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    if-eqz p3, :cond_0

    const p1, 0x7f040434

    goto :goto_0

    :cond_0
    const p1, 0x7f04043b

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    long-to-double p1, p1

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p3, :cond_2

    const p2, 0x7f040437

    goto :goto_1

    :cond_2
    const p2, 0x7f040438

    :goto_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v1

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static contains(Ljava/lang/String;[Ljava/lang/CharSequence;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private forceRefreshUi()V
    .locals 3

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mTrapezoidIndex:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mBatteryChartView:Lcom/android/settings/fuelgauge/BatteryChartView;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mBatteryHistoryLevels:[I

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/BatteryChartView;->setLevels([I)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mBatteryChartView:Lcom/android/settings/fuelgauge/BatteryChartView;

    invoke-virtual {v1, v0}, Lcom/android/settings/fuelgauge/BatteryChartView;->setSelectedIndex(I)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->setTimestampLabel()V

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->refreshUi(IZ)Z

    return-void
.end method

.method private static getBatteryHistoryKeys(Ljava/util/Map;)[J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/BatteryHistEntry;",
            ">;>;)[J"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/16 p0, 0x19

    new-array v1, p0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getBatteryLast24HrUsageData(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings/fuelgauge/BatteryDiffEntry;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->getBatteryLast24HrUsageData(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatteryDiffEntry;

    iget-object v2, v1, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    if-eqz v2, :cond_2

    iget v3, v2, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumerType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-wide v2, v2, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUserId:J

    int-to-long v4, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_3
    return-object v0
.end method

.method public static getBatteryLast24HrUsageData(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/BatteryDiffEntry;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getBatteryHistory(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v0, "getBatteryLast24HrData() size=%d time=&d/ms"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "BatteryChartPreferenceController"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    invoke-static {v2}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->getBatteryHistoryKeys(Ljava/util/Map;)[J

    move-result-object v3

    invoke-static {p0, v0, v3, v2, v1}, Lcom/android/settings/fuelgauge/ConvertUtils;->getIndexedUsageMap(Landroid/content/Context;I[JLjava/util/Map;Z)Ljava/util/Map;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSlotInformation()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mTrapezoidIndex:I

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mBatteryHistoryKeys:[J

    const/4 v3, 0x2

    mul-int/2addr v0, v3

    aget-wide v4, v2, v0

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mIs24HourFormat:Z

    invoke-static {v1, v4, v5, v0}, Lcom/android/settings/fuelgauge/ConvertUtils;->utcToLocalTimeHour(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mBatteryHistoryKeys:[J

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mTrapezoidIndex:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    mul-int/2addr v4, v3

    aget-wide v6, v2, v4

    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mIs24HourFormat:Z

    invoke-static {v1, v6, v7, v2}, Lcom/android/settings/fuelgauge/ConvertUtils;->utcToLocalTimeHour(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v1

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mIs24HourFormat:Z

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    new-array p0, v3, [Ljava/lang/Object;

    aput-object v0, p0, v2

    aput-object v1, p0, v5

    const-string v0, "%s\u2013%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-array p0, v3, [Ljava/lang/Object;

    aput-object v0, p0, v2

    aput-object v1, p0, v5

    const-string v0, "%s \u2013 %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getSlotInformation(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const p1, 0x7f04039f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const p1, 0x7f04040c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const p1, 0x7f04039e

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const p1, 0x7f04040b

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private synthetic lambda$addAllPreferences$2(Ljava/util/List;Lcom/android/settings/fuelgauge/BatteryDiffEntry;)V
    .locals 2

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->isValidToShowEntry(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ignore showing item:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryChartPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->isSystemEntry()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mSystemEntries:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mTrapezoidIndex:I

    if-ltz p0, :cond_2

    invoke-static {p2}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->validateUsageTime(Lcom/android/settings/fuelgauge/BatteryDiffEntry;)Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$addFooterPreferenceIfNeeded$3()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private synthetic lambda$refreshUi$1()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->removeAndCacheAllPrefs()V

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->addAllPreferences()V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->refreshCategoryTitle()V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string/jumbo v0, "refreshUi is finished in %d/ms"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "BatteryChartPreferenceController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$setBatteryChartView$0(Lcom/android/settings/fuelgauge/BatteryChartView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->setBatteryChartViewInner(Lcom/android/settings/fuelgauge/BatteryChartView;)V

    return-void
.end method

.method private refreshExpandUi()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mSystemEntries:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->addPreferenceToScreen(Ljava/util/List;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mSystemEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatteryDiffEntry;

    iget-object v1, v1, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPreferenceCache:Ljava/util/Map;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private removeAndCacheAllPrefs()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPreferenceCache:Ljava/util/Map;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_3
    :goto_2
    return-void
.end method

.method private setBatteryChartViewInner(Lcom/android/settings/fuelgauge/BatteryChartView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mBatteryChartView:Lcom/android/settings/fuelgauge/BatteryChartView;

    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/BatteryChartView;->setOnSelectListener(Lcom/android/settings/fuelgauge/BatteryChartView$OnSelectListener;)V

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->forceRefreshUi()V

    return-void
.end method

.method static validateUsageTime(Lcom/android/settings/fuelgauge/BatteryDiffEntry;)Z
    .locals 8

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    add-long v4, v0, v2

    const-wide/32 v6, 0x6ddd00

    cmp-long v0, v0, v6

    if-gtz v0, :cond_1

    cmp-long v0, v2, v6

    if-gtz v0, :cond_1

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "validateUsageTime() fail for\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BatteryChartPreferenceController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method addPreferenceToScreen(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/BatteryDiffEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatteryDiffEntry;

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getAppLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "BatteryChartPreferenceController"

    if-nez v5, :cond_5

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v5, v1, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v7, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "preference should be removed for:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v8

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPreferenceCache:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    :goto_1
    if-nez v7, :cond_3

    new-instance v7, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {v7, v6}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPreferenceCache:Ljava/util/Map;

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v7, v4}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v0}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getPercentOfTotal()D

    move-result-wide v3

    invoke-virtual {v7, v3, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(D)V

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    invoke-virtual {v7, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setBatteryDiffEntry(Lcom/android/settings/fuelgauge/BatteryDiffEntry;)V

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->validForRestriction()Z

    move-result v3

    invoke-virtual {v7, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0, v7, v1}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->setPreferenceSummary(Lcom/android/settings/fuelgauge/PowerGaugePreference;Lcom/android/settings/fuelgauge/BatteryDiffEntry;)V

    if-nez v2, :cond_4

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v7}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find app resource for:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const v2, 0x7f04039f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "battery_graph_footer"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/FooterPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 12

    instance-of v0, p1, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getBatteryDiffEntry()Lcom/android/settings/fuelgauge/BatteryDiffEntry;

    move-result-object v4

    iget-object v0, v4, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->isAppEntry()Z

    move-result v3

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v6, 0x758

    if-eqz v3, :cond_1

    const/16 v3, 0x6e8

    goto :goto_0

    :cond_1
    const/16 v3, 0x6e9

    :goto_0
    move v7, v3

    const/16 v8, 0x758

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "none"

    move-object v9, v3

    goto :goto_1

    :cond_2
    move-object v9, v2

    :goto_1
    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getPercentOfTotal()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual/range {v5 .. v10}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getAppLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x1

    aput-object v1, v3, v8

    const/4 v1, 0x2

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    aput-object v0, v3, v1

    const-string v0, "handleClick() label=%s key=%s package=%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryChartPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getPercent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->isValidToShowSummary(Ljava/lang/String;)Z

    move-result v6

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->getSlotInformation()Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/BatteryDiffEntry;Ljava/lang/String;ZLjava/lang/String;)V

    return v8
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method isValidToShowEntry(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mNotAllowShowEntryPackages:[Ljava/lang/CharSequence;

    invoke-static {p1, p0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->contains(Ljava/lang/String;[Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method isValidToShowSummary(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mNotAllowShowSummaryPackages:[Ljava/lang/CharSequence;

    invoke-static {p1, p0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->contains(Ljava/lang/String;[Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mTrapezoidIndex:I

    const-string v1, "current_time_slot"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mTrapezoidIndex:I

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mIsExpanded:Z

    const-string v1, "expand_system_info"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mIsExpanded:Z

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mTrapezoidIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mIsExpanded:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "onCreate() slotIndex=%d isExpanded=%b"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryChartPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->clearCache()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPreferenceCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_1
    return-void
.end method

.method public onExpand(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mIsExpanded:Z

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const/16 v2, 0x6ea

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->refreshExpandUi()V

    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    sget v1, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->sUiMode:I

    if-eq v1, v0, :cond_0

    sput v0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->sUiMode:I

    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->clearCache()V

    const-string v0, "BatteryChartPreferenceController"

    const-string v1, "clear icon and label cache since uiMode is changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mIs24HourFormat:Z

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const/16 v1, 0x758

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mTrapezoidIndex:I

    const-string v1, "current_time_slot"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mIsExpanded:Z

    const-string v1, "expand_system_info"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mTrapezoidIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mIsExpanded:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "onSaveInstanceState() slotIndex=%d isExpanded=%b"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryChartPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSelect(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChartSelect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryChartPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->refreshUi(IZ)Z

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const/16 p1, 0x6e7

    goto :goto_0

    :cond_0
    const/16 p1, 0x6e6

    :goto_0
    new-array v0, v0, [Landroid/util/Pair;

    invoke-virtual {v1, p0, p1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    return-void
.end method

.method refreshCategoryTitle()V
    .locals 5

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->getSlotInformation()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v4, "refreshCategoryTitle:%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "BatteryChartPreferenceController"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->getSlotInformation(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mExpandDividerPreference:Lcom/android/settings/fuelgauge/ExpandDividerPreference;

    if-eqz v1, :cond_1

    invoke-direct {p0, v3, v0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->getSlotInformation(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->setTitle(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method refreshUi(IZ)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mBatteryIndexedMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mBatteryChartView:Lcom/android/settings/fuelgauge/BatteryChartView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mTrapezoidIndex:I

    if-ne v0, p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mBatteryIndexedMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v0, v1

    const-string/jumbo p2, "refreshUi: index=%d size=%d isForce:%b"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "BatteryChartPreferenceController"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mTrapezoidIndex:I

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v2

    :cond_1
    :goto_0
    return v1
.end method

.method setBatteryChartView(Lcom/android/settings/fuelgauge/BatteryChartView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mBatteryChartView:Lcom/android/settings/fuelgauge/BatteryChartView;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;Lcom/android/settings/fuelgauge/BatteryChartView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method setBatteryHistoryMap(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/BatteryHistEntry;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->getBatteryHistoryKeys(Ljava/util/Map;)[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mBatteryHistoryKeys:[J

    const/16 v2, 0xd

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mBatteryHistoryLevels:[I

    move v3, v0

    :goto_0
    const-string v4, "BatteryChartPreferenceController"

    if-ge v3, v2, :cond_4

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mBatteryHistoryKeys:[J

    mul-int/lit8 v6, v3, 0x2

    aget-wide v5, v5, v6

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/fuelgauge/BatteryHistEntry;

    iget v6, v6, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBatteryLevel:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mBatteryHistoryLevels:[I

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v5, v3

    goto :goto_3

    :cond_3
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "abnormal entry list in the timestamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-static {v8, v5, v6}, Lcom/android/settings/fuelgauge/ConvertUtils;->utcToLocalTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->forceRefreshUi()V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mBatteryHistoryKeys:[J

    array-length v6, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aget-wide v5, v5, v6

    invoke-static {v3, v5, v6}, Lcom/android/settings/fuelgauge/ConvertUtils;->utcToLocalTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mBatteryHistoryLevels:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const-string/jumbo v3, "setBatteryHistoryMap() size=%d key=%s\nlevels=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask;-><init>(Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;Ljava/util/Map;Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask-IA;)V

    new-array p0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_5
    :goto_4
    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mBatteryIndexedMap:Ljava/util/Map;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mBatteryHistoryKeys:[J

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mBatteryHistoryLevels:[I

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->addFooterPreferenceIfNeeded(Z)V

    return-void
.end method

.method setPreferenceSummary(Lcom/android/settings/fuelgauge/PowerGaugePreference;Lcom/android/settings/fuelgauge/BatteryDiffEntry;)V
    .locals 11

    iget-wide v0, p2, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    iget-wide v2, p2, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    add-long v4, v0, v2

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->isValidToShowSummary(Ljava/lang/String;)Z

    move-result p2

    const/4 v6, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-wide/16 v7, 0x0

    cmp-long p2, v4, v7

    if-nez p2, :cond_1

    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    cmp-long p2, v0, v7

    const/4 v0, 0x1

    if-nez p2, :cond_2

    cmp-long p2, v2, v7

    if-eqz p2, :cond_2

    invoke-direct {p0, v2, v3, v0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->buildUsageTimeInfo(JZ)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    const-wide/32 v9, 0xea60

    cmp-long p2, v4, v9

    const/4 v1, 0x0

    if-gez p2, :cond_3

    invoke-direct {p0, v4, v5, v1}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->buildUsageTimeInfo(JZ)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    invoke-direct {p0, v4, v5, v1}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->buildUsageTimeInfo(JZ)Ljava/lang/String;

    move-result-object v6

    cmp-long p2, v2, v7

    if-lez p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, v3, v0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->buildUsageTimeInfo(JZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_4
    :goto_0
    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setTimestampLabel()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mBatteryChartView:Lcom/android/settings/fuelgauge/BatteryChartView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mBatteryHistoryKeys:[J

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, p0, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/BatteryChartView;->setLatestTimestamp(J)V

    :cond_1
    :goto_0
    return-void
.end method
