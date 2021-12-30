.class public Lcom/android/settings/nfc/NfcEnabler;
.super Lcom/android/settings/nfc/BaseNfcEnabler;
.source "NfcEnabler.java"


# instance fields
.field private final mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/widget/MainSwitchPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/BaseNfcEnabler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    return-void
.end method


# virtual methods
.method protected handleNfcStateChanged(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/MainSwitchPreference;->updateStatus(Z)V

    iget-object p0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/MainSwitchPreference;->updateStatus(Z)V

    iget-object p0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/MainSwitchPreference;->updateStatus(Z)V

    iget-object p0, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/MainSwitchPreference;->updateStatus(Z)V

    iget-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcEnabler;->isToggleable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method isToggleable()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/NfcPreferenceController;->isToggleableInAirplaneMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/NfcPreferenceController;->shouldTurnOffNFCInAirplaneMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method
