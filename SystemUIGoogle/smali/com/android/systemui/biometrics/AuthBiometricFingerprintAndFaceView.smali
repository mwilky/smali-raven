.class public final Lcom/android/systemui/biometrics/AuthBiometricFingerprintAndFaceView;
.super Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;
.source "AuthBiometricFingerprintAndFaceView.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintAndFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final createIconController()Lcom/android/systemui/biometrics/AuthIconController;
    .locals 2

    new-instance v0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintAndFaceIconController;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintAndFaceIconController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;)V

    return-object v0
.end method

.method public final forceRequireConfirmation(I)Z
    .locals 0

    const/16 p0, 0x8

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getConfirmationPrompt()I
    .locals 0

    const p0, 0x7f130147

    return p0
.end method

.method public final ignoreUnsuccessfulEventsFrom(I)Z
    .locals 0

    const/16 p0, 0x8

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onPointerDown(Ljava/util/HashSet;)Z
    .locals 0

    const/16 p0, 0x8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
