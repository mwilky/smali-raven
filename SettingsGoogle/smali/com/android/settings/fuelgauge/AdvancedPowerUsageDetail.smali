.class public Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AdvancedPowerUsageDetail.java"

# interfaces
.implements Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment$AppButtonsDialogListener;
.implements Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;
.implements Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;
    }
.end annotation


# instance fields
.field enableTriState:Z

.field private mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

.field mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private mBackgroundActivityPreferenceController:Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

.field mBackgroundPreference:Landroidx/preference/Preference;

.field mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

.field mForegroundPreference:Landroidx/preference/Preference;

.field mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field mOptimizePreference:Lcom/android/settingslib/widget/RadioButtonPreference;

.field mRestrictedPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

.field mState:Lcom/android/settingslib/applications/ApplicationsState;

.field mUnrestrictedPreference:Lcom/android/settingslib/widget/RadioButtonPreference;


# direct methods
.method public static synthetic $r8$lambda$d8w-AEtndX6KO2gcf2LcMpuiLww(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->lambda$initPreferenceForTriState$0(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->enableTriState:Z

    return-void
.end method

.method private getAppActiveSummaryWithSlotTime(JJJLjava/lang/String;)Ljava/lang/CharSequence;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x2

    const-wide/32 v2, 0xea60

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_1

    cmp-long p1, p3, v0

    if-eqz p1, :cond_1

    cmp-long p1, p3, v2

    if-gez p1, :cond_0

    const p1, 0x7f040355

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/CharSequence;

    aput-object p7, p1, v5

    invoke-static {p0, p1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const p1, 0x7f040356

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p3

    invoke-static {p0, p3, p4, v5, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, p2, v5

    aput-object p7, p2, v4

    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    cmp-long p1, p5, v2

    if-gez p1, :cond_2

    const p1, 0x7f0403df

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/CharSequence;

    aput-object p7, p1, v5

    invoke-static {p0, p1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_2
    cmp-long p1, p3, v2

    if-gez p1, :cond_4

    cmp-long p1, p3, v0

    if-nez p1, :cond_3

    const p1, 0x7f0403e0

    goto :goto_1

    :cond_3
    const p1, 0x7f0403dc

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p5

    invoke-static {p0, p3, p4, v5, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, p2, v5

    aput-object p7, p2, v4

    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_4
    const p1, 0x7f0403d7

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    long-to-double p5, p5

    invoke-static {v1, p5, p6, v5, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p5

    aput-object p5, v0, v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p3

    invoke-static {p0, p3, p4, v5, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v0, v4

    aput-object p7, v0, p2

    invoke-static {p1, v0}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getAppActiveTime(JJLjava/lang/String;)Ljava/lang/CharSequence;
    .locals 8

    add-long v5, p1, p3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isChartGraphEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f04037f

    goto :goto_0

    :cond_0
    const p1, 0x7f04037e

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    :cond_1
    if-nez p5, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-interface {v0, p5}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isChartGraphEnabled(Landroid/content/Context;)Z

    move-result p5

    if-eqz p5, :cond_2

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getAppPast24HrActiveSummary(JJJ)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getAppFullChargeActiveSummary(JJJ)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    :cond_3
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getAppActiveSummaryWithSlotTime(JJJLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private getAppFullChargeActiveSummary(JJJ)Ljava/lang/CharSequence;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x1

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    if-nez p1, :cond_1

    cmp-long p1, p3, v0

    if-eqz p1, :cond_1

    cmp-long p1, p3, v2

    if-gez p1, :cond_0

    const p1, 0x7f040353

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const p1, 0x7f040351

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p3

    invoke-static {p0, p3, p4, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, p2, v4

    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    cmp-long p1, p5, v2

    if-gez p1, :cond_2

    const p1, 0x7f0403dd

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_2
    cmp-long p1, p3, v2

    if-gez p1, :cond_4

    cmp-long p1, p3, v0

    if-nez p1, :cond_3

    const p1, 0x7f0403d8

    goto :goto_1

    :cond_3
    const p1, 0x7f0403da

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p5

    invoke-static {p0, p3, p4, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, p2, v4

    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_4
    const p1, 0x7f0403d5

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    long-to-double p5, p5

    invoke-static {v1, p5, p6, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p5

    aput-object p5, v0, v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p3

    invoke-static {p0, p3, p4, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v0, p2

    invoke-static {p1, v0}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getAppPast24HrActiveSummary(JJJ)Ljava/lang/CharSequence;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x1

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    if-nez p1, :cond_1

    cmp-long p1, p3, v0

    if-eqz p1, :cond_1

    cmp-long p1, p3, v2

    if-gez p1, :cond_0

    const p1, 0x7f040354

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const p1, 0x7f040352

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p3

    invoke-static {p0, p3, p4, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, p2, v4

    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    cmp-long p1, p5, v2

    if-gez p1, :cond_2

    const p1, 0x7f0403de

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_2
    cmp-long p1, p3, v2

    if-gez p1, :cond_4

    cmp-long p1, p3, v0

    if-nez p1, :cond_3

    const p1, 0x7f0403d9

    goto :goto_1

    :cond_3
    const p1, 0x7f0403db

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p5

    invoke-static {p0, p3, p4, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, p2, v4

    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_4
    const p1, 0x7f0403d6

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    long-to-double p5, p5

    invoke-static {v1, p5, p6, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p5

    aput-object p5, v0, v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p3

    invoke-static {p0, p3, p4, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v0, p2

    invoke-static {p1, v0}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$initPreferenceForTriState$0(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const p2, 0x7f040a01

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-static {p1, p2, v0}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private onCreateForTriState(Ljava/lang/String;)V
    .locals 4

    const-string v0, "unrestricted_pref"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mUnrestrictedPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    const-string v0, "optimized_pref"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizePreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    const-string v0, "restricted_pref"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mRestrictedPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    const-string v0, "app_usage_footer_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/FooterPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mUnrestrictedPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizePreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mRestrictedPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;)V

    new-instance v0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra_uid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    return-void
.end method

.method private static startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$200(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_package_name"

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$300(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "extra_label"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$600(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)I

    move-result v1

    const-string v3, "extra_icon_id"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$200(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$500(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)I

    move-result v1

    const-string v2, "extra_uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$900(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)J

    move-result-wide v1

    const-string v3, "extra_background_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$800(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)J

    move-result-wide v1

    const-string v3, "extra_foreground_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$400(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_slot_time"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$100(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_power_usage_percent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$700(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)I

    move-result v1

    const-string v2, "extra_power_usage_amount"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$1000(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$500(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    :goto_1
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const v1, 0x7f040369

    invoke-virtual {p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public static startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/BatteryDiffEntry;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    iget-object v0, p2, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    new-instance v1, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;-><init>(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$1;)V

    invoke-static {v1, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$102(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$202(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getAppLabel()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$302(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1, p5}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$402(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)Ljava/lang/String;

    iget-wide v2, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUid:J

    long-to-int p3, v2

    invoke-static {v1, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$502(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;I)I

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getAppIconId()I

    move-result p3

    invoke-static {v1, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$602(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;I)I

    iget-wide v2, p2, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mConsumePower:D

    double-to-int p3, v2

    invoke-static {v1, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$702(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;I)I

    const-wide/16 v2, 0x0

    if-eqz p4, :cond_0

    iget-wide v4, p2, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    invoke-static {v1, v4, v5}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$802(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;J)J

    if-eqz p4, :cond_1

    iget-wide v2, p2, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    :cond_1
    invoke-static {v1, v2, v3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$902(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;J)J

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->isUserEntry()Z

    move-result p2

    invoke-static {v1, p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$1002(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Z)Z

    invoke-static {p0, p1, v1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)V

    return-void
.end method

.method public static startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;Z)V
    .locals 5

    new-instance v0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;-><init>(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$1;)V

    invoke-static {v0, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$102(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->getDefaultPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$202(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$302(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->getUid()I

    move-result p3

    invoke-static {v0, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$502(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;I)I

    iget p3, p2, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    invoke-static {v0, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$602(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;I)I

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->getConsumedPower()D

    move-result-wide v1

    double-to-int p3, v1

    invoke-static {v0, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$702(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;I)I

    const-wide/16 v1, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->getTimeInForegroundMs()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    invoke-static {v0, v3, v4}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$802(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;J)J

    if-eqz p4, :cond_1

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->getTimeInBackgroundMs()J

    move-result-wide v1

    :cond_1
    invoke-static {v0, v1, v2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$902(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;J)J

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->isUserEntry()Z

    move-result p2

    invoke-static {v0, p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$1002(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Z)Z

    invoke-static {p0, p1, v0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)V

    return-void
.end method

.method public static startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "extra_package_name"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "extra_power_usage_percent"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v3, "extra_uid"

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "AdvancedPowerDetail"

    invoke-static {v2, p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance p2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p2, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const p2, 0x7f040369

    invoke-virtual {p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private updatePreferenceState(Lcom/android/settingslib/widget/RadioButtonPreference;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_uid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "extra_package_name"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v7

    iget-object v9, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v4, v3

    move-object v6, p0

    move-object v8, v1

    invoke-direct/range {v4 .. v11}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState;II)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->enableTriState:Z

    if-eqz v3, :cond_0

    new-instance p0, Lcom/android/settings/fuelgauge/UnrestrictedPreferenceController;

    invoke-direct {p0, p1, v2, v1}, Lcom/android/settings/fuelgauge/UnrestrictedPreferenceController;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/android/settings/fuelgauge/OptimizedPreferenceController;

    invoke-direct {p0, p1, v2, v1}, Lcom/android/settings/fuelgauge/OptimizedPreferenceController;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/android/settings/fuelgauge/RestrictedPreferenceController;

    invoke-direct {p0, p1, v2, v1}, Lcom/android/settings/fuelgauge/RestrictedPreferenceController;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

    invoke-direct {v3, p1, p0, v2, v1}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/InstrumentedPreferenceFragment;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundActivityPreferenceController:Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    invoke-direct {p1, v2, p0, v1}, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AdvancedPowerDetail"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x35

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->enableTriState:Z

    if-eqz p0, :cond_0

    const p0, 0x7f1500b5

    goto :goto_0

    :cond_0
    const p0, 0x7f1500b6

    :goto_0
    return p0
.end method

.method public handleDialogClick(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->handleDialogClick(I)V

    :cond_0
    return-void
.end method

.method initHeader()V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const v1, 0x7f0d01fe

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, p0, v0}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v4, :cond_1

    const-string v4, "extra_label"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    const-string v4, "extra_icon_id"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v3, v4}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/EntityHeaderController;->setIsInstantApp(Z)Lcom/android/settings/widget/EntityHeaderController;

    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->enableTriState:Z

    if-eqz v3, :cond_2

    const-string v3, "extra_foreground_time"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v3, "extra_background_time"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v3, 0x0

    const-string v4, "extra_slot_time"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getAppActiveTime(JJLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    :cond_2
    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    return-void
.end method

.method initPreference(Landroid/content/Context;)V
    .locals 9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_foreground_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "extra_background_time"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mForegroundPreference:Landroidx/preference/Preference;

    const v5, 0x7f0403ea

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/CharSequence;

    long-to-double v1, v1

    const/4 v8, 0x0

    invoke-static {p1, v1, v2, v8, v8}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v5, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundPreference:Landroidx/preference/Preference;

    const v1, 0x7f04034c

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    new-array v1, v6, [Ljava/lang/CharSequence;

    long-to-double v2, v3

    invoke-static {p1, v2, v3, v8, v8}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v1, v8

    invoke-static {p0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method initPreferenceForTriState(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->isValidPackageName()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f040c81

    if-nez v0, :cond_0

    const v0, 0x7f040c83

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->isSystemOrDefaultApp()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f040c88

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f040c80

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    new-instance v1, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreAction(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    const v0, 0x7f040c82

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->handleActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    return-void
.end method

.method public onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundActivityPreferenceController:Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->updateSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_package_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->enableTriState:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->onCreateForTriState(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "app_usage_foreground"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mForegroundPreference:Landroidx/preference/Preference;

    const-string v0, "app_usage_background"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundPreference:Landroidx/preference/Preference;

    :goto_0
    const-string v0, "header_view"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    :cond_1
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settingslib/widget/RadioButtonPreference;)V
    .locals 8

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mUnrestrictedPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->updatePreferenceState(Lcom/android/settingslib/widget/RadioButtonPreference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizePreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->updatePreferenceState(Lcom/android/settingslib/widget/RadioButtonPreference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mRestrictedPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->updatePreferenceState(Lcom/android/settingslib/widget/RadioButtonPreference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mUnrestrictedPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 p1, 0x6f0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizePreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x6f1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mRestrictedPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x6f2

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/util/Pair;

    new-instance v4, Landroid/util/Pair;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v3, v1

    new-instance v1, Landroid/util/Pair;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v6, "extra_power_usage_percent"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v4, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, p1, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->initHeader()V

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->enableTriState:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->initPreferenceForTriState(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v2, 0x761

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->initPreference(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
