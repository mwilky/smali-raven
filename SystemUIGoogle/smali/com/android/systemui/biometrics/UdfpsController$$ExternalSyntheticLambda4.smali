.class public final synthetic Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/UdfpsController;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:F

.field public final synthetic f$5:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/UdfpsController;JIIFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/biometrics/UdfpsController;

    iput-wide p2, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda4;->f$1:J

    iput p4, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda4;->f$2:I

    iput p5, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda4;->f$3:I

    iput p6, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda4;->f$4:F

    iput p7, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda4;->f$5:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/biometrics/UdfpsController;

    iget-wide v1, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda4;->f$1:J

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda4;->f$2:I

    iget v4, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda4;->f$3:I

    iget v5, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda4;->f$4:F

    iget v6, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda4;->f$5:F

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/systemui/biometrics/UdfpsController;->mIsAodInterruptActive:Z

    iget-object p0, v0, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v7, Lcom/android/systemui/tuner/TunerFragment$$ExternalSyntheticLambda0;

    const/4 v8, 0x3

    invoke-direct {v7, v8, v0}, Lcom/android/systemui/tuner/TunerFragment$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    const-wide/16 v8, 0x3e8

    invoke-interface {p0, v7, v8, v9}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p0

    iput-object p0, v0, Lcom/android/systemui/biometrics/UdfpsController;->mCancelAodTimeoutAction:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerDown(JIIFF)V

    return-void
.end method
