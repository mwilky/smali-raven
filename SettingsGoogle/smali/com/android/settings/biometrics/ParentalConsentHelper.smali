.class public Lcom/android/settings/biometrics/ParentalConsentHelper;
.super Ljava/lang/Object;
.source "ParentalConsentHelper.java"


# instance fields
.field private mConsentFace:Ljava/lang/Boolean;

.field private mConsentFingerprint:Ljava/lang/Boolean;

.field private mGkPwHandle:J

.field private final mRequireFace:Z

.field private final mRequireFingerprint:Z


# direct methods
.method public constructor <init>(ZZLjava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/settings/biometrics/ParentalConsentHelper;->mRequireFace:Z

    iput-boolean p2, p0, Lcom/android/settings/biometrics/ParentalConsentHelper;->mRequireFingerprint:Z

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    iput-wide p1, p0, Lcom/android/settings/biometrics/ParentalConsentHelper;->mGkPwHandle:J

    return-void
.end method

.method private getNextConsentIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/biometrics/ParentalConsentHelper;->mRequireFace:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/biometrics/ParentalConsentHelper;->mConsentFace:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/biometrics/ParentalConsentHelper;->mRequireFingerprint:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/biometrics/ParentalConsentHelper;->mConsentFingerprint:Ljava/lang/Boolean;

    if-nez p0, :cond_1

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollParentalConsent;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasFaceConsent(Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "face"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static hasFingerprintConsent(Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "fingerprint"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static isConsent(ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public getConsentResult()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/settings/biometrics/ParentalConsentHelper;->mConsentFace:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v3, "face"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;->CONSENT_STRING_RESOURCES:[I

    const-string v3, "face_strings"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    iget-object p0, p0, Lcom/android/settings/biometrics/ParentalConsentHelper;->mConsentFingerprint:Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    const-string v1, "fingerprint"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollParentalConsent;->CONSENT_STRING_RESOURCES:[I

    const-string v1, "fingerprint_strings"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p0, "iris"

    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-array p0, v2, [I

    const-string v1, "iris_strings"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public launchNext(Landroid/app/Activity;I)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/ParentalConsentHelper;->getNextConsentIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    iget-wide v1, p0, Lcom/android/settings/biometrics/ParentalConsentHelper;->mGkPwHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    const-string p0, "gk_pw_handle"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public launchNext(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .locals 2

    if-eqz p4, :cond_2

    const/4 v0, 0x0

    const-string v1, "sensor_modality"

    invoke-virtual {p4, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p4

    const/4 v0, 0x2

    if-eq p4, v0, :cond_1

    const/16 v0, 0x8

    if-eq p4, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/android/settings/biometrics/ParentalConsentHelper;->mConsentFace:Ljava/lang/Boolean;

    invoke-static {p3, p4}, Lcom/android/settings/biometrics/ParentalConsentHelper;->isConsent(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/biometrics/ParentalConsentHelper;->mConsentFace:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lcom/android/settings/biometrics/ParentalConsentHelper;->mConsentFingerprint:Ljava/lang/Boolean;

    invoke-static {p3, p4}, Lcom/android/settings/biometrics/ParentalConsentHelper;->isConsent(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/biometrics/ParentalConsentHelper;->mConsentFingerprint:Ljava/lang/Boolean;

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/biometrics/ParentalConsentHelper;->launchNext(Landroid/app/Activity;I)Z

    move-result p0

    return p0
.end method

.method public updateGatekeeperHandle(Landroid/content/Intent;)V
    .locals 2

    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/biometrics/ParentalConsentHelper;->mGkPwHandle:J

    return-void
.end method
