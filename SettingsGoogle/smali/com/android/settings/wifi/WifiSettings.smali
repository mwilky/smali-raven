.class public Lcom/android/settings/wifi/WifiSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;
.implements Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettings$WifiEntryConnectCallback;,
        Lcom/android/settings/wifi/WifiSettings$WifiConnectActionListener;
    }
.end annotation


# static fields
.field static final ADD_NETWORK_REQUEST:I = 0x2

.field static final MENU_ID_DISCONNECT:I = 0x3

.field static final MENU_ID_FORGET:I = 0x4

.field static final PREF_KEY_DATA_USAGE:Ljava/lang/String; = "wifi_data_usage"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field mAddWifiNetworkPreference:Lcom/android/settings/wifi/AddWifiNetworkPreference;

.field private mClickedConnect:Z

.field mConfigureWifiSettingsPreference:Landroidx/preference/Preference;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field mDataUsagePreference:Lcom/android/settings/datausage/DataUsagePreference;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog2;

.field private mDialogMode:I

.field private mDialogWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private mDialogWifiEntryKey:Ljava/lang/String;

.field private mEnableNextOnConnection:Z

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mHideProgressBarRunnable:Ljava/lang/Runnable;

.field private mIsRestricted:Z

.field private mIsWifiEntryListStale:Z

.field private mOpenSsid:Ljava/lang/String;

.field private mProgressHeader:Landroid/view/View;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field mSavedNetworksPreference:Landroidx/preference/Preference;

.field private mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

.field private final mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$9mlk5CdT0AZb85M0SCiAxlqBF84(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSettings;->lambda$onWifiEntriesChanged$4(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ESqXBRHAZLyfZHkfnWbIF4rxP-w(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->lambda$setOffMessage$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$IGRWQSMqWPcsjo_4bLKdfE-AYmM(Lcom/android/settings/wifi/WifiSettings;Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiSettings;->lambda$updateWifiEntryPreferences$6(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Mxij3OvX-bhmUTtsEjvPoN9x1N4(Lcom/android/settings/wifi/WifiSettings;Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settingslib/wifi/WifiEntryPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->lambda$updateWifiEntryPreferences$8(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settingslib/wifi/WifiEntryPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eRNpVLw0snHZGoiX0EsnK9qC_cc(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->lambda$updateWifiEntryPreferences$7(Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gpfVP81Mt4k5oMwv0u2wZtzWri4(Lcom/android/settings/wifi/WifiSettings;Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->lambda$onWifiEntriesChanged$3(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kLuL6dZ7wYr_TD1rmezZfbVX5JE(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSettings;->lambda$onWifiEntriesChanged$5(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mTdhR_tgj5301ngIhkN5H_wGw1A(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$wz6WSkpNu9xytkkbJQuD3YSpX5I(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$z5vGw_dNO-mh6fi44D4BLLcz8ug(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->lambda$onContextItemSelected$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$4;

    const v1, 0x7f150115

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSettings$4;-><init>(I)V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsWifiEntryListStale:Z

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mClickedConnect:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiSettings;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->launchConfigNewNetworkFragment(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiSettings;Lcom/android/wifitrackerlib/WifiEntry;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/wifitrackerlib/WifiEntry;I)V

    return-void
.end method

.method private addMessagePreference(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/LinkablePreference;->setTitle(I)V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private addPreferences()V
    .locals 3

    const v0, 0x7f150115

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "connected_access_point"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "access_points"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "configure_wifi_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConfigureWifiSettingsPreference:Landroidx/preference/Preference;

    const-string v0, "saved_networks"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSavedNetworksPreference:Landroidx/preference/Preference;

    new-instance v0, Lcom/android/settings/wifi/AddWifiNetworkPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/AddWifiNetworkPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddWifiNetworkPreference:Lcom/android/settings/wifi/AddWifiNetworkPreference;

    const-string v0, "wifi_status_message"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/LinkablePreference;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    const-string v0, "wifi_data_usage"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/DataUsagePreference;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDataUsagePreference:Lcom/android/settings/datausage/DataUsagePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mDataUsagePreference:Lcom/android/settings/datausage/DataUsagePreference;

    sget-object v0, Landroid/net/NetworkTemplate;->WIFI_NETWORKID_ALL:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/settings/datausage/DataUsagePreference;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    return-void
.end method

.method private canForgetNetwork()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canForget()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    new-instance v1, Lcom/android/settings/wifi/WifiEnabler;

    new-instance v2, Lcom/android/settings/widget/MainSwitchBarController;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/widget/MainSwitchBarController;-><init>(Lcom/android/settings/widget/SettingsMainSwitchBar;)V

    iget-object p0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-direct {v1, v0, v2, p0}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    return-object v1
.end method

.method private forget(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    const/16 v2, 0x89

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->forget(Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;)V

    return-void
.end method

.method private getSavedNetworkSettingsSummaryText(II)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f120059

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p0, p2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f12005b

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p0, p1, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f12005a

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p0, p2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleAddNetworkSubmitEvent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "wifi_config_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method private static isDisabledByWrongPassword(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result p0

    const/16 v1, 0x8

    if-ne v1, p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private static isVerboseLoggingEnabled()Z
    .locals 1

    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method private isWifiWakeupEnabled()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isAutoWakeupEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "airplane_mode_on"

    invoke-static {v0, p0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateWifiEntryPreferences()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    return-void
.end method

.method private synthetic lambda$onContextItemSelected$2()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->launchWifiDppConfiguratorActivity(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method private synthetic lambda$onWifiEntriesChanged$3(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onWifiEntriesChanged$4(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onWifiEntriesChanged$5(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSettings;->isDisabledByWrongPassword(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$setOffMessage$9()V
    .locals 2

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/location/WifiScanningFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v1, 0x7f040b7d

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private synthetic lambda$updateWifiEntryPreferences$6(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->signIn(Lcom/android/wifitrackerlib/WifiEntry$SignInCallback;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiSettings;->launchNetworkDetailsFragment(Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$updateWifiEntryPreferences$7(Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->launchNetworkDetailsFragment(Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;)V

    return-void
.end method

.method private synthetic lambda$updateWifiEntryPreferences$8(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settingslib/wifi/WifiEntryPreference;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->openSubscriptionHelpPage(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method private launchAddNetworkFragment()V
    .locals 2

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0415ab

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const-class v1, Lcom/android/settings/wifi/AddNetworkFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private launchConfigNewNetworkFragment(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_chosen_wifientry_key"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const-class v1, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private launchNetworkDetailsFragment(Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "settings_wifi_details_datausage_header"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f040f2c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v3, "key_chosen_wifientry_key"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const-class v0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private launchWifiDppConfiguratorActivity(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0, v1, p1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getConfiguratorQrCodeGeneratorIntentOrNull(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lcom/android/wifitrackerlib/WifiEntry;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "WifiSettings"

    const-string p1, "Launch Wi-Fi DPP QR code generator with a wrong Wi-Fi network!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v1, 0x0

    const/16 v2, 0x6ae

    const/16 v3, 0x63b

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private onAddNetworkPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->launchAddNetworkFragment()V

    return-void
.end method

.method private removeConnectedWifiEntryPreference()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private removeWifiEntryPreference()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private restrictUi()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f041643

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void
.end method

.method private setOffMessage()V
    .locals 4

    const v0, 0x7f041644

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0416bd

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f0416be

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    new-instance v2, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/settings/wifi/LinkablePreference;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settings/LinkifyUtils$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedWifiEntryPreference()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeWifiEntryPreference()V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private showDialog(Lcom/android/wifitrackerlib/WifiEntry;I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    :cond_1
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogWifiEntryKey:Ljava/lang/String;

    iput p2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private updateWifiEntryPreferences()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v3

    if-eq v3, v0, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->removeAll()V

    new-instance v3, Lcom/android/settings/wifi/ConnectedWifiEntryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0, p0}, Lcom/android/settings/wifi/ConnectedWifiEntryPreference;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiEntryPreference;->refresh()V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    new-instance v4, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0, v3}, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V

    invoke-virtual {v3, v0}, Lcom/android/settings/wifi/ConnectedWifiEntryPreference;->setOnGearClickListener(Lcom/android/settings/wifi/ConnectedWifiEntryPreference$OnGearClickListener;)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mClickedConnect:Z

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mClickedConnect:Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->scrollToPreference(Landroidx/preference/Preference;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    move v4, v3

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/android/settingslib/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v7

    if-ne v7, v3, :cond_5

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setOrder(I)V

    move v4, v3

    move v3, v2

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->createLongPressWifiEntryPreference(Lcom/android/wifitrackerlib/WifiEntry;)Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/WifiEntryPreference;->refresh()V

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getHelpUriString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    new-instance v4, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v3}, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {v5, v4}, Lcom/android/settingslib/wifi/WifiEntryPreference;->setOnButtonClickListener(Lcom/android/settingslib/wifi/WifiEntryPreference$OnButtonClickListener;)V

    :cond_7
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v3, v2

    move v4, v6

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V

    if-nez v3, :cond_9

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    const v1, 0x7f041645

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setOrder(I)V

    const-string v2, "wifi_empty_list"

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v4, v1

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x6a4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddWifiNetworkPreference:Lcom/android/settings/wifi/AddWifiNetworkPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddWifiNetworkPreference:Lcom/android/settings/wifi/AddWifiNetworkPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->setAdditionalSettingsSummaries()V

    return-void
.end method

.method private updateWifiEntryPreferencesDelayed()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method changeNextButtonState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getNextButton()Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method connect(Lcom/android/wifitrackerlib/WifiEntry;ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v2

    const/16 v3, 0x87

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$WifiEntryConnectCallback;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiSettings$WifiEntryConnectCallback;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/wifitrackerlib/WifiEntry;ZZ)V

    invoke-virtual {p1, v0}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    return-void
.end method

.method createLongPressWifiEntryPreference(Lcom/android/wifitrackerlib/WifiEntry;)Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;
    .locals 2

    new-instance v0, Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x25b

    return p0
.end method

.method getHelpIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    const p0, 0x7f040a3c

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x67

    return p0
.end method

.method handleAddNetworkRequest(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiSettings;->handleAddNetworkSubmitEvent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiSettings{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v5, Lcom/android/settings/wifi/WifiSettings$1;

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/wifi/WifiSettings$1;-><init>(Lcom/android/settings/wifi/WifiSettings;Ljava/time/ZoneId;)V

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getWifiTrackerLibProvider()Lcom/android/settings/wifi/WifiTrackerLibProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x3a98

    const-wide/16 v8, 0x2710

    move-object v10, p0

    invoke-interface/range {v0 .. v10}, Lcom/android/settings/wifi/WifiTrackerLibProvider;->createWifiPickerTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)Lcom/android/wifitrackerlib/WifiPickerTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiConnectListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConnectListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$2;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$3;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    if-eqz p1, :cond_1

    const-string v0, "dialog_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    const-string v0, "wifi_ap_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogWifiEntryKey:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "wifi_enable_next_on_connect"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    const-string v0, "wifi_start_connect_ssid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onWifiStateChanged()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/wifi/WifiSettings;->handleAddNetworkRequest(ILandroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    if-nez p1, :cond_2

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    if-ne p2, v0, :cond_3

    const-string p1, "network_config_key"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance p3, Lcom/android/settings/wifi/WifiSettings$WifiConnectActionListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settings/wifi/WifiSettings$WifiConnectActionListener;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings$1;)V

    invoke-virtual {p2, p1, p3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_3
    return-void

    :cond_4
    const/4 p2, 0x4

    if-ne p1, p2, :cond_5

    return-void

    :cond_5
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz p1, :cond_6

    if-nez p2, :cond_6

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->addPreferences()V

    :cond_6
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-static {p1, v0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V

    return v2

    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/wifitrackerlib/WifiEntry;I)V

    return v2

    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->forget(Lcom/android/wifitrackerlib/WifiEntry;)V

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->disconnect(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V

    return v2

    :cond_4
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/wifi/WifiSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;ZZ)V

    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "settings_provider_model"

    invoke-static {p1, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.NETWORK_PROVIDER_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10008000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAnimationAllowed(Z)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->addPreferences()V

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    return-void
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-object p0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/Preference;

    instance-of p3, p2, Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;

    if-nez p3, :cond_0

    return-void

    :cond_0
    check-cast p2, Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    move-result p2

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const p2, 0x7f0415e9

    invoke-interface {p1, v0, p3, v0, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_1
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->canDisconnect()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x6

    const v1, 0x7f0411e2

    invoke-interface {p1, v0, p2, v0, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 p2, 0x3

    const/4 v1, 0x1

    const v2, 0x7f0415fa

    invoke-interface {p1, v0, p2, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->canForgetNetwork()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x4

    const v1, 0x7f040962

    invoke-interface {p1, v0, p2, v0, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_3
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    :cond_4
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-eq p0, p3, :cond_5

    const/4 p0, 0x5

    const p2, 0x7f041687

    invoke-interface {p1, v0, p0, v0, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_5
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    invoke-static {p1, p0, v0, v1}, Lcom/android/settings/wifi/WifiDialog2;->createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;Lcom/android/wifitrackerlib/WifiEntry;I)Lcom/android/settings/wifi/WifiDialog2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->teardownSwitchController()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    invoke-virtual {p0, p0}, Lcom/android/settings/SettingsPreferenceFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogWifiEntryKey:Ljava/lang/String;

    return-void
.end method

.method public onForget(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->forget(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method public onNumSavedNetworksChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->setAdditionalSettingsSummaries()V

    return-void
.end method

.method public onNumSavedSubscriptionsChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->setAdditionalSettingsSummaries()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p1, Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->shouldEditBeforeConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->launchConfigNewNetworkFragment(Lcom/android/wifitrackerlib/WifiEntry;)V

    return v1

    :cond_1
    invoke-virtual {p0, p1, v1, v1}, Lcom/android/settings/wifi/WifiSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;ZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddWifiNetworkPreference:Lcom/android/settings/wifi/AddWifiNetworkPreference;

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    :goto_0
    return v1

    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->restrictUi()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    const-string v1, "dialog_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogWifiEntryKey:Ljava/lang/String;

    const-string v0, "wifi_ap_key"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onScan(Lcom/android/settings/wifi/WifiDialog2;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getEnrolleeQrCodeScannerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->restrictUi()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsWifiEntryListStale:Z

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getMode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getController()Lcom/android/settings/wifi/WifiConfigController2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController2;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f04164d

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, v1, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0, p1, v2, v2}, Lcom/android/settings/wifi/WifiSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;ZZ)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$WifiConnectActionListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/WifiSettings$WifiConnectActionListener;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings$1;)V

    invoke-virtual {p1, v1, v0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x7f0601cd

    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0d045f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    :cond_0
    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f0416e6

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/MainSwitchBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWifiEntriesChanged()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsWifiEntryListStale:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsWifiEntryListStale:Z

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateWifiEntryPreferences()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateWifiEntryPreferencesDelayed()V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda7;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda8;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/settings/wifi/WifiSettings$$ExternalSyntheticLambda9;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->launchConfigNewNetworkFragment(Lcom/android/wifitrackerlib/WifiEntry;)V

    :cond_2
    return-void
.end method

.method public onWifiStateChanged()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v0

    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWifiStateChanged called with wifi state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateWifiEntryPreferences()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedWifiEntryPreference()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeWifiEntryPreference()V

    const v0, 0x7f0416f9

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setOffMessage()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->setAdditionalSettingsSummaries()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mClickedConnect:Z

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedWifiEntryPreference()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeWifiEntryPreference()V

    const v0, 0x7f041705

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    :goto_0
    return-void
.end method

.method openSubscriptionHelpPage(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getHelpUriString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/wifi/WifiSettings;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity was not found for intent, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method setAdditionalSettingsSummaries()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConfigureWifiSettingsPreference:Landroidx/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isWifiWakeupEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0415e7

    goto :goto_0

    :cond_0
    const v1, 0x7f0415e6

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getNumSavedNetworks()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getNumSavedSubscriptions()I

    move-result v1

    add-int v2, v0, v1

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSavedNetworksPreference:Landroidx/preference/Preference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSavedNetworksPreference:Landroidx/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->getSavedNetworkSettingsSummaryText(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSavedNetworksPreference:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    return-void
.end method

.method protected setProgressBarVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
