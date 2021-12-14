.class Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;
.super Ljava/lang/Object;
.source "UdfpsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/UdfpsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServerRequest"
.end annotation


# instance fields
.field final mCallback:Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;

.field final mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

.field final mRequestReason:I


# direct methods
.method constructor <init>(ILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;Lcom/android/systemui/biometrics/UdfpsEnrollHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;->mRequestReason:I

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;->mCallback:Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;

    iput-object p3, p0, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    return-void
.end method


# virtual methods
.method onAcquiredGood()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->animateIfLastStep()V

    :cond_0
    return-void
.end method

.method onEnrollmentHelp()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->onEnrollmentHelp()V

    :cond_0
    return-void
.end method

.method onEnrollmentProgress(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->onEnrollmentProgress(I)V

    :cond_0
    return-void
.end method

.method onUserCanceled()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;->mCallback:Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;

    invoke-interface {p0}, Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;->onUserCanceled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "UdfpsController"

    const-string v1, "Remote exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
