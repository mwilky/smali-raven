.class public Lcom/android/settings/nfc/SecureNfcEnabler;
.super Lcom/android/settings/nfc/BaseNfcEnabler;
.source "SecureNfcEnabler.java"


# instance fields
.field private final mPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/SwitchPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/BaseNfcEnabler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    return-void
.end method


# virtual methods
.method protected handleNfcStateChanged(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    const v1, 0x7f040dcb

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p1, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    const v0, 0x7f040db0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p0, p0, Lcom/android/settings/nfc/SecureNfcEnabler;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method
