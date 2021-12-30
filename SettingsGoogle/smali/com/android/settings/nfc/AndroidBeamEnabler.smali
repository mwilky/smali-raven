.class public Lcom/android/settings/nfc/AndroidBeamEnabler;
.super Lcom/android/settings/nfc/BaseNfcEnabler;
.source "AndroidBeamEnabler.java"


# instance fields
.field private final mBeamDisallowedBySystem:Z

.field private final mPreference:Lcom/android/settingslib/RestrictedPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/RestrictedPreference;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/BaseNfcEnabler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "no_outgoing_beam"

    invoke-static {p1, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mBeamDisallowedBySystem:Z

    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->isNfcAvailable()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-virtual {p2, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p2, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected handleNfcStateChanged(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mBeamDisallowedBySystem:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const-string v0, "no_outgoing_beam"

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const p1, 0x7f040200

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const p1, 0x7f0401ff

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/nfc/AndroidBeamEnabler;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const p1, 0x7f040db0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_1
    return-void
.end method
