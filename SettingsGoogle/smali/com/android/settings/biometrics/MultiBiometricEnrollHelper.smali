.class public Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;
.super Ljava/lang/Object;
.source "MultiBiometricEnrollHelper.java"


# instance fields
.field private final mActivity:Landroidx/fragment/app/FragmentActivity;

.field private final mGkPwHandle:J

.field private final mRequestEnrollFace:Z

.field private final mRequestEnrollFingerprint:Z

.field private final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$PRdoaXV2Y2DdKDIcfX1_c3KrmWM(Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;IIJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->lambda$launchFingerprintEnroll$1(IIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$fbqFDd3hFa7UqqQJzOIwD3xFTGw(Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;IIJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->lambda$launchFaceEnroll$0(IIJ)V

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/FragmentActivity;IZZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iput p2, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mUserId:I

    iput-wide p5, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mGkPwHandle:J

    iput-boolean p3, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mRequestEnrollFace:Z

    iput-boolean p4, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mRequestEnrollFingerprint:Z

    return-void
.end method

.method private synthetic lambda$launchFaceEnroll$0(IIJ)V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget-wide v1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mGkPwHandle:J

    iget v3, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mUserId:I

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object v7

    iget-object p2, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getFaceIntroIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v5

    const-string p2, "sensor_id"

    invoke-virtual {v5, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "challenge"

    invoke-virtual {v5, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-boolean p1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mRequestEnrollFingerprint:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/biometrics/BiometricUtils;->getFingerprintIntroIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    iget-wide p2, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mGkPwHandle:J

    const-string p4, "gk_pw_handle"

    invoke-virtual {p1, p4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const/4 p3, 0x0

    const/high16 p4, 0xc000000

    invoke-static {p2, p3, p1, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "enroll_after_face"

    invoke-virtual {v5, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    iget-object v4, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const/16 v6, 0xbb8

    iget-wide p1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mGkPwHandle:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mUserId:I

    invoke-static/range {v4 .. v9}, Lcom/android/settings/biometrics/BiometricUtils;->launchEnrollForResult(Landroidx/fragment/app/FragmentActivity;Landroid/content/Intent;I[BLjava/lang/Long;I)V

    return-void
.end method

.method private synthetic lambda$launchFingerprintEnroll$1(IIJ)V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget-wide v1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mGkPwHandle:J

    iget v3, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mUserId:I

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object v7

    iget-object p2, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getFingerprintIntroIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v5

    const-string p2, "sensor_id"

    invoke-virtual {v5, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "challenge"

    invoke-virtual {v5, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget-wide p1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mGkPwHandle:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mUserId:I

    const/16 v6, 0xbb9

    invoke-static/range {v4 .. v9}, Lcom/android/settings/biometrics/BiometricUtils;->launchEnrollForResult(Landroidx/fragment/app/FragmentActivity;Landroid/content/Intent;I[BLjava/lang/Long;I)V

    return-void
.end method

.method private launchFaceEnroll()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const-class v1, Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    iget v1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mUserId:I

    new-instance v2, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;)V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/face/FaceManager;->generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    return-void
.end method

.method private launchFingerprintEnroll()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mUserId:I

    new-instance v2, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;)V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    return-void
.end method


# virtual methods
.method startNextStep()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mRequestEnrollFace:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->launchFaceEnroll()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mRequestEnrollFingerprint:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->launchFingerprintEnroll()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object p0, p0, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
