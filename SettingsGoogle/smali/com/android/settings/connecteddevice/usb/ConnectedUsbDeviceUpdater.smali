.class public Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;
.super Ljava/lang/Object;
.source "ConnectedUsbDeviceUpdater.java"


# instance fields
.field private mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

.field private mFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

.field mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

.field mUsbPreference:Lcom/android/settingslib/RestrictedPreference;

.field mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$YMT27BB3VijI9vlbBPYTPB_rbEs(Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;ZJII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->lambda$new$0(ZJII)V

    return-void
.end method

.method public static synthetic $r8$lambda$oCI2J5W_Rx24LqiFrRa1IDTQNWI(Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->lambda$initUsbPreference$1(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V
    .locals 1

    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-direct {v0, p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    iput-object p3, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    iput-object p4, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    new-instance p2, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    iget-object p3, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

    iget-object p4, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-direct {p2, p1, p3, p4}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method private forceUpdate()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->register()V

    return-void
.end method

.method public static getSummary(JI)I
    .locals 10

    const/4 v0, 0x1

    const-wide/16 v1, 0x8

    const-wide/16 v3, 0x10

    const-wide/16 v5, 0x20

    const-wide/16 v7, 0x4

    if-eq p2, v0, :cond_5

    const/4 v0, 0x2

    const v9, 0x7f04148c

    if-eq p2, v0, :cond_0

    return v9

    :cond_0
    cmp-long p2, p0, v7

    if-nez p2, :cond_1

    const p0, 0x7f04148d

    return p0

    :cond_1
    cmp-long p2, p0, v5

    if-nez p2, :cond_2

    const p0, 0x7f041492

    return p0

    :cond_2
    cmp-long p2, p0, v3

    if-nez p2, :cond_3

    const p0, 0x7f04148f

    return p0

    :cond_3
    cmp-long p0, p0, v1

    if-nez p0, :cond_4

    const p0, 0x7f04148a

    return p0

    :cond_4
    return v9

    :cond_5
    cmp-long p2, p0, v7

    if-nez p2, :cond_6

    const p0, 0x7f04148e

    return p0

    :cond_6
    cmp-long p2, p0, v5

    if-nez p2, :cond_7

    const p0, 0x7f041493

    return p0

    :cond_7
    cmp-long p2, p0, v3

    if-nez p2, :cond_8

    const p0, 0x7f041490

    return p0

    :cond_8
    cmp-long p0, p0, v1

    if-nez p0, :cond_9

    const p0, 0x7f04148b

    return p0

    :cond_9
    const p0, 0x7f041491

    return p0
.end method

.method private synthetic lambda$initUsbPreference$1(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-interface {v1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const v0, 0x7f041487

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$0(ZJII)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Lcom/android/settingslib/RestrictedPreference;

    const/4 v0, 0x2

    if-ne p5, v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x0

    :goto_0
    invoke-static {p2, p3, p4}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->getSummary(JI)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-interface {p1, p0}, Lcom/android/settings/connecteddevice/DevicePreferenceCallback;->onDeviceAdded(Landroidx/preference/Preference;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-interface {p1, p0}, Lcom/android/settings/connecteddevice/DevicePreferenceCallback;->onDeviceRemoved(Landroidx/preference/Preference;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public initUsbPreference(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/android/settingslib/RestrictedPreference;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Lcom/android/settingslib/RestrictedPreference;

    const v1, 0x7f041486

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Lcom/android/settingslib/RestrictedPreference;

    const v1, 0x7f02038f

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Lcom/android/settingslib/RestrictedPreference;

    const-string v1, "connected_usb"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfUsbDataSignalingIsDisabled(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Lcom/android/settingslib/RestrictedPreference;

    new-instance v0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->forceUpdate()V

    return-void
.end method

.method public registerCallback()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->register()V

    return-void
.end method

.method public unregisterCallback()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;->unregister()V

    return-void
.end method
