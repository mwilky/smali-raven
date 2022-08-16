.class public final synthetic Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:[F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;FF[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iput p2, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda7;->f$1:F

    iput p3, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda7;->f$2:F

    iput-object p4, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda7;->f$3:[F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iget v1, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda7;->f$1:F

    iget v2, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda7;->f$2:F

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda7;->f$3:[F

    iget-object v0, v0, Lcom/android/systemui/doze/DozeTriggers;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    float-to-int v7, v1

    float-to-int v8, v2

    const/4 v1, 0x3

    aget v10, p0, v1

    const/4 v1, 0x4

    aget v9, p0, v1

    iget-object p0, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsAodInterruptActive:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    if-eqz v0, :cond_3

    iget-wide v0, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestId:J

    goto :goto_0

    :cond_3
    const-wide/16 v0, -0x1

    :goto_0
    move-wide v5, v0

    new-instance v0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda4;

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/biometrics/UdfpsController;JIIFF)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAodInterruptRunnable:Ljava/lang/Runnable;

    iget-boolean v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mScreenOn:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda4;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAodInterruptRunnable:Ljava/lang/Runnable;

    :cond_4
    :goto_1
    return-void
.end method
