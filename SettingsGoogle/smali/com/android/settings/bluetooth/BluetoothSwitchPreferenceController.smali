.class public Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;
.super Ljava/lang/Object;
.source "BluetoothSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

.field private mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mContext:Landroid/content/Context;

.field private mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

.field private mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

.field private mSwitch:Lcom/android/settings/widget/SwitchWidgetController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/RestrictionUtils;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/widget/FooterPreference;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p3}, Lcom/android/settings/widget/SwitchWidgetController;->setupView()V

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchWidgetController;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->updateText(Z)V

    new-instance p2, Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    const/16 v4, 0x366

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;ILcom/android/settings/bluetooth/RestrictionUtils;)V

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {p2, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setToggleCallback(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    new-instance p2, Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-direct {p2, p1}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/widget/FooterPreference;)V
    .locals 1

    new-instance v0, Lcom/android/settings/bluetooth/RestrictionUtils;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/RestrictionUtils;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/RestrictionUtils;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/widget/FooterPreference;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/location/BluetoothScanningFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x56e

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->start()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->updateText(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->stop()V

    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->updateText(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method updateText(Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->isBluetoothScanningEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v0, "link"

    invoke-direct {p1, v0, p0}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f0404d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/utils/AnnotationSpan;->linkify(Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    const p1, 0x7f04045d

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    :goto_0
    return-void
.end method
