.class public Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;
.super Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;
.source "FaceEnrollParentalConsent.java"


# static fields
.field public static final CONSENT_STRING_RESOURCES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;->CONSENT_STRING_RESOURCES:[I

    return-void

    :array_0
    .array-data 4
        0x7f0410f4
        0x7f041110
        0x7f041119
        0x7f04111a
        0x7f041118
        0x7f041115
        0x7f041112
        0x7f041111
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;-><init>()V

    return-void
.end method

.method private onConsentResult(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "sensor_modality"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected generateChallengeOnCreate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getHeaderResDefault()I
    .locals 0

    const p0, 0x7f0410f4

    return p0
.end method

.method protected getHowMessage()I
    .locals 0

    const p0, 0x7f041115

    return p0
.end method

.method protected getInControlMessage()I
    .locals 0

    const p0, 0x7f041111

    return p0
.end method

.method protected getInControlTitle()I
    .locals 0

    const p0, 0x7f041112

    return p0
.end method

.method protected getInfoMessageGlasses()I
    .locals 0

    const p0, 0x7f041119

    return p0
.end method

.method protected getInfoMessageLooking()I
    .locals 0

    const p0, 0x7f04111a

    return p0
.end method

.method protected getInfoMessageRequireEyes()I
    .locals 0

    const p0, 0x7f041118

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x765

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f041110

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    return-void
.end method

.method protected onEnrollmentSkipped(Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;->onConsentResult(Z)V

    return-void
.end method

.method protected onFinishedEnrolling(Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;->onConsentResult(Z)V

    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;->onConsentResult(Z)V

    return-void
.end method

.method protected onSetOrConfirmCredentials(Landroid/content/Intent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onSkipButtonClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;->onConsentResult(Z)V

    return-void
.end method
