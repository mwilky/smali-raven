.class public final Lcom/google/android/systemui/fingerprint/HbmRequest;
.super Ljava/lang/Object;
.source "UdfpsHbmController.kt"


# instance fields
.field public final authController:Lcom/android/systemui/biometrics/AuthController;

.field public final biometricExecutor:Ljava/util/concurrent/Executor;

.field public final displayId:I

.field public finishedStarting:Z

.field public final halControlsIllumination:Z

.field public final lhbmProvider:Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;

.field public final mainHandler:Landroid/os/Handler;

.field public final onHbmEnabled:Ljava/lang/Runnable;

.field public started:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/biometrics/AuthController;Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;ZILcom/android/systemui/biometrics/UdfpsView$doIlluminate$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->mainHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->biometricExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->authController:Lcom/android/systemui/biometrics/AuthController;

    iput-object p4, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->lhbmProvider:Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;

    iput-boolean p5, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->halControlsIllumination:Z

    iput p6, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->displayId:I

    iput-object p7, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->onHbmEnabled:Ljava/lang/Runnable;

    return-void
.end method

.method public static final disable$onFinished-0(Lcom/google/android/systemui/fingerprint/HbmRequest;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "UdfpsHbmController"

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->authController:Lcom/android/systemui/biometrics/AuthController;

    iget-object v1, v1, Lcom/android/systemui/biometrics/AuthController;->mUdfpsHbmListener:Landroid/hardware/fingerprint/IUdfpsHbmListener;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p0, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->displayId:I

    invoke-interface {v1, p0}, Landroid/hardware/fingerprint/IUdfpsHbmListener;->onHbmDisabled(I)V

    const-string p0, "disableHbm | requested to unfreeze the refresh rate"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "disableHbm"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-nez p0, :cond_1

    const-string p0, "doDisableHbm | onHbmDisabled is null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/systemui/fingerprint/HbmRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/systemui/fingerprint/HbmRequest;

    iget-object v1, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->mainHandler:Landroid/os/Handler;

    iget-object v3, p1, Lcom/google/android/systemui/fingerprint/HbmRequest;->mainHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->biometricExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p1, Lcom/google/android/systemui/fingerprint/HbmRequest;->biometricExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->authController:Lcom/android/systemui/biometrics/AuthController;

    iget-object v3, p1, Lcom/google/android/systemui/fingerprint/HbmRequest;->authController:Lcom/android/systemui/biometrics/AuthController;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->lhbmProvider:Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;

    iget-object v3, p1, Lcom/google/android/systemui/fingerprint/HbmRequest;->lhbmProvider:Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->halControlsIllumination:Z

    iget-boolean v3, p1, Lcom/google/android/systemui/fingerprint/HbmRequest;->halControlsIllumination:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->displayId:I

    iget v3, p1, Lcom/google/android/systemui/fingerprint/HbmRequest;->displayId:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->onHbmEnabled:Ljava/lang/Runnable;

    iget-object p1, p1, Lcom/google/android/systemui/fingerprint/HbmRequest;->onHbmEnabled:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->biometricExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->authController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->lhbmProvider:Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->halControlsIllumination:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->displayId:I

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/FontInterpolator$VarFontKey$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object p0, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->onHbmEnabled:Ljava/lang/Runnable;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "HbmRequest(mainHandler="

    invoke-static {v0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", biometricExecutor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->biometricExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", authController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->authController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lhbmProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->lhbmProvider:Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", halControlsIllumination="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->halControlsIllumination:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", onHbmEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->onHbmEnabled:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
