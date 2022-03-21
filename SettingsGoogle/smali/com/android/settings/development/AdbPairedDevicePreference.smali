.class public Lcom/android/settings/development/AdbPairedDevicePreference;
.super Landroidx/preference/Preference;
.source "AdbPairedDevicePreference.java"


# instance fields
.field private mPairedDevice:Landroid/debug/PairDevice;


# direct methods
.method public constructor <init>(Landroid/debug/PairDevice;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/development/AdbPairedDevicePreference;->mPairedDevice:Landroid/debug/PairDevice;

    invoke-virtual {p0}, Lcom/android/settings/development/AdbPairedDevicePreference;->getWidgetLayoutResourceId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/development/AdbPairedDevicePreference;->refresh()V

    return-void
.end method

.method static setTitle(Lcom/android/settings/development/AdbPairedDevicePreference;Landroid/debug/PairDevice;)V
    .locals 1

    invoke-virtual {p1}, Landroid/debug/PairDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/debug/PairDevice;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0401c3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getWidgetLayoutResourceId()I
    .locals 0

    const p0, 0x7f0601ba

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const p0, 0x7f0d04e6

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0d04e7

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public refresh()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/AdbPairedDevicePreference;->mPairedDevice:Landroid/debug/PairDevice;

    invoke-static {p0, v0}, Lcom/android/settings/development/AdbPairedDevicePreference;->setTitle(Lcom/android/settings/development/AdbPairedDevicePreference;Landroid/debug/PairDevice;)V

    return-void
.end method

.method public savePairedDeviceToExtras(Landroid/os/Bundle;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/development/AdbPairedDevicePreference;->mPairedDevice:Landroid/debug/PairDevice;

    const-string v0, "paired_device"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public setPairedDevice(Landroid/debug/PairDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/development/AdbPairedDevicePreference;->mPairedDevice:Landroid/debug/PairDevice;

    return-void
.end method
