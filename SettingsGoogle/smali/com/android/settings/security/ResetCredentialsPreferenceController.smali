.class public Lcom/android/settings/security/ResetCredentialsPreferenceController;
.super Lcom/android/settings/security/RestrictedEncryptionPreferenceController;
.source "ResetCredentialsPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field private final mKeyStore:Ljava/security/KeyStore;

.field private mPreference:Lcom/android/settingslib/RestrictedPreference;

.field private final mWifiKeyStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 3

    const-string v0, "AndroidKeyStore"

    const-string v1, "no_config_credentials"

    invoke-direct {p0, p1, v1}, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->isSystem()Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_1
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    const/16 v2, 0x66

    invoke-direct {v0, v2}, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, p1

    :catch_1
    :cond_0
    iput-object v1, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mWifiKeyStore:Ljava/security/KeyStore;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/security/ResetCredentialsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "credentials_reset"

    return-object p0
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mKeyStore:Ljava/security/KeyStore;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mWifiKeyStore:Ljava/security/KeyStore;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :catch_0
    :cond_2
    iget-object p0, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_3
    return-void
.end method
