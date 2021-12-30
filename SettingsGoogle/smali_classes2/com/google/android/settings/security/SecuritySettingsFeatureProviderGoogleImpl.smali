.class public Lcom/google/android/settings/security/SecuritySettingsFeatureProviderGoogleImpl;
.super Ljava/lang/Object;
.source "SecuritySettingsFeatureProviderGoogleImpl.java"

# interfaces
.implements Lcom/android/settings/security/SecuritySettingsFeatureProvider;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$zNON_FkBDJJ2zdvKVU5yLsvF4SY(Lcom/google/android/settings/security/SecuritySettingsFeatureProviderGoogleImpl;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/security/SecuritySettingsFeatureProviderGoogleImpl;->lambda$new$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/settings/security/SecuritySettingsFeatureProviderGoogleImpl;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/google/android/settings/security/SecuritySettingsFeatureProviderGoogleImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/android/settings/security/SecuritySettingsFeatureProviderGoogleImpl$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/security/SecuritySettingsFeatureProviderGoogleImpl;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic lambda$new$0()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/settings/security/SecuritySettingsFeatureProviderGoogleImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/settings/security/SecurityContentManager;->getInstance(Landroid/content/Context;)Lcom/google/android/settings/security/SecurityContentManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/settings/security/SecurityContentManager;->getSecurityHubIsEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAlternativeSecuritySettingsFragmentClassname()Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/google/android/settings/security/SecurityHubDashboard;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasAlternativeSecuritySettingsFragment()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/settings/security/SecuritySettingsFeatureProviderGoogleImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/settings/security/SecurityContentManager;->getInstance(Landroid/content/Context;)Lcom/google/android/settings/security/SecurityContentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/settings/security/SecurityContentManager;->getSecurityHubIsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/settings/security/SecuritySettingsFeatureProviderGoogleImpl;->mContext:Landroid/content/Context;

    const-string v0, "settings_enable_security_hub"

    invoke-static {p0, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
