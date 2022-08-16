.class public final Lcom/google/android/systemui/fingerprint/UdfpsHbmController;
.super Ljava/lang/Object;
.source "UdfpsHbmController.kt"

# interfaces
.implements Lcom/android/systemui/biometrics/UdfpsHbmProvider;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUdfpsHbmController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UdfpsHbmController.kt\ncom/google/android/systemui/fingerprint/UdfpsHbmController\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,266:1\n11328#2:267\n11663#2,3:268\n*S KotlinDebug\n*F\n+ 1 UdfpsHbmController.kt\ncom/google/android/systemui/fingerprint/UdfpsHbmController\n*L\n197#1:267\n197#1:268,3\n*E\n"
.end annotation


# instance fields
.field public final authController:Lcom/android/systemui/biometrics/AuthController;

.field public final biometricExecutor:Ljava/util/concurrent/Executor;

.field public final context:Landroid/content/Context;

.field public currentRequest:Lcom/google/android/systemui/fingerprint/HbmRequest;

.field public final displayManager:Landroid/hardware/display/DisplayManager;

.field public final execution:Lcom/android/systemui/util/concurrency/Execution;

.field public final lhbmProvider:Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;

.field public final mainHandler:Landroid/os/Handler;

.field public final peakRefreshRate:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/Execution;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;Lcom/android/systemui/biometrics/AuthController;Landroid/hardware/display/DisplayManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->execution:Lcom/android/systemui/util/concurrency/Execution;

    iput-object p3, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mainHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->biometricExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->lhbmProvider:Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;

    iput-object p6, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->authController:Lcom/android/systemui/biometrics/AuthController;

    iput-object p7, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    invoke-virtual {p7, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    array-length p3, p1

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    array-length p3, p1

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    aget-object p5, p1, p4

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p5}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p5

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_1

    :cond_2
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :goto_2
    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_3
    iput p1, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->peakRefreshRate:F

    return-void
.end method


# virtual methods
.method public final disableHbm()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->execution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->isMainThread()Z

    const-string v0, "UdfpsHbmController"

    const-string v1, "disableHbm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "UdfpsHbmController.disableHbm"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->currentRequest:Lcom/google/android/systemui/fingerprint/HbmRequest;

    if-nez v1, :cond_0

    const-string p0, "disableHbm | HBM is already disabled"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->authController:Lcom/android/systemui/biometrics/AuthController;

    iget-object v2, v2, Lcom/android/systemui/biometrics/AuthController;->mUdfpsHbmListener:Landroid/hardware/fingerprint/IUdfpsHbmListener;

    if-nez v2, :cond_1

    const-string v2, "disableHbm | mDisplayManagerCallback is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, v1, Lcom/google/android/systemui/fingerprint/HbmRequest;->halControlsIllumination:Z

    const-string v2, "UdfpsHbmController.e2e.unsetPeakRefreshRate"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-static {v2, v3}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string v0, "UdfpsHbmController.e2e.disableHbm"

    invoke-static {v0, v3}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->currentRequest:Lcom/google/android/systemui/fingerprint/HbmRequest;

    iget-boolean p0, v1, Lcom/google/android/systemui/fingerprint/HbmRequest;->started:Z

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean p0, v1, Lcom/google/android/systemui/fingerprint/HbmRequest;->halControlsIllumination:Z

    if-eqz p0, :cond_4

    invoke-static {v2, v3}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    invoke-static {v1, v0}, Lcom/google/android/systemui/fingerprint/HbmRequest;->disable$onFinished-0(Lcom/google/android/systemui/fingerprint/HbmRequest;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    iget-object p0, v1, Lcom/google/android/systemui/fingerprint/HbmRequest;->biometricExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/systemui/fingerprint/HbmRequest$disable$1;

    invoke-direct {v0, v1}, Lcom/google/android/systemui/fingerprint/HbmRequest$disable$1;-><init>(Lcom/google/android/systemui/fingerprint/HbmRequest;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final enableHbm(Lcom/android/systemui/biometrics/UdfpsView$doIlluminate$1;Z)V
    .locals 15

    move-object v1, p0

    iget-object v0, v1, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->execution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->isMainThread()Z

    const-string v2, "UdfpsHbmController"

    const-string v3, "enableHbm"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UdfpsHbmController.enableHbm"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->authController:Lcom/android/systemui/biometrics/AuthController;

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsHbmListener:Landroid/hardware/fingerprint/IUdfpsHbmListener;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_0

    const-string v0, "enableHbm | mDisplayManagerCallback is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->currentRequest:Lcom/google/android/systemui/fingerprint/HbmRequest;

    if-eqz v0, :cond_1

    const-string v0, "enableHbm | HBM is already requested"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v0, v5

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    if-eqz v0, :cond_5

    if-eqz p2, :cond_2

    const-string v0, "UdfpsHbmController.e2e.setPeakRefreshRate"

    invoke-static {v0, v5}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    const-string v0, "UdfpsHbmController.e2e.enableHbm"

    invoke-static {v0, v5}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    :goto_2
    new-instance v14, Lcom/google/android/systemui/fingerprint/HbmRequest;

    iget-object v7, v1, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mainHandler:Landroid/os/Handler;

    iget-object v8, v1, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->biometricExecutor:Ljava/util/concurrent/Executor;

    iget-object v9, v1, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->authController:Lcom/android/systemui/biometrics/AuthController;

    iget-object v10, v1, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->lhbmProvider:Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;

    iget-object v0, v1, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    move-object v6, v14

    move/from16 v11, p2

    move v12, v0

    move-object/from16 v13, p1

    invoke-direct/range {v6 .. v13}, Lcom/google/android/systemui/fingerprint/HbmRequest;-><init>(Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/biometrics/AuthController;Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;ZILcom/android/systemui/biometrics/UdfpsView$doIlluminate$1;)V

    iput-object v14, v1, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->currentRequest:Lcom/google/android/systemui/fingerprint/HbmRequest;

    iget-object v6, v1, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->displayManager:Landroid/hardware/display/DisplayManager;

    iget-object v7, v1, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v6, p0, v7}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :try_start_0
    iget-object v6, v1, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->authController:Lcom/android/systemui/biometrics/AuthController;

    iget-object v6, v6, Lcom/android/systemui/biometrics/AuthController;->mUdfpsHbmListener:Landroid/hardware/fingerprint/IUdfpsHbmListener;

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v6, v0}, Landroid/hardware/fingerprint/IUdfpsHbmListener;->onHbmEnabled(I)V

    :goto_3
    const-string v0, "enableHbm | request freeze refresh rate"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    iget-object v0, v1, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->displayManager:Landroid/hardware/display/DisplayManager;

    iget v2, v14, Lcom/google/android/systemui/fingerprint/HbmRequest;->displayId:I

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    iget v0, v1, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->peakRefreshRate:F

    cmpg-float v0, v2, v0

    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    move v4, v5

    :goto_5
    if-eqz v4, :cond_5

    iget v0, v14, Lcom/google/android/systemui/fingerprint/HbmRequest;->displayId:I

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->onDisplayChanged(I)V

    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->execution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->isMainThread()Z

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->currentRequest:Lcom/google/android/systemui/fingerprint/HbmRequest;

    const-string v1, "UdfpsHbmController"

    if-nez v0, :cond_0

    const-string p0, "onDisplayChanged | mHbmRequest is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v2, v0, Lcom/google/android/systemui/fingerprint/HbmRequest;->displayId:I

    const-string v3, " != "

    if-eq p1, v2, :cond_1

    const-string p0, "onDisplayChanged | displayId: "

    invoke-static {p0, p1, v3}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, v0, Lcom/google/android/systemui/fingerprint/HbmRequest;->displayId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result v2

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onDisplayChanged | state: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " != ON"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, v0, Lcom/google/android/systemui/fingerprint/HbmRequest;->finishedStarting:Z

    if-eqz p0, :cond_2

    const-string p0, "onDisplayChanged | state changed while HBM is enabled."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    iget v2, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->peakRefreshRate:F

    cmpg-float v2, p1, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_4

    move v2, v5

    goto :goto_0

    :cond_4
    move v2, v6

    :goto_0
    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisplayChanged | hz: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->peakRefreshRate:F

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, v0, Lcom/google/android/systemui/fingerprint/HbmRequest;->finishedStarting:Z

    if-eqz p0, :cond_5

    const-string p0, "onDisplayChanged | refresh rate changed while HBM is enabled."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayChanged | froze the refresh rate at "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " Hz in state: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, v0, Lcom/google/android/systemui/fingerprint/HbmRequest;->started:Z

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    iput-boolean v5, v0, Lcom/google/android/systemui/fingerprint/HbmRequest;->started:Z

    iget-boolean p0, v0, Lcom/google/android/systemui/fingerprint/HbmRequest;->halControlsIllumination:Z

    if-eqz p0, :cond_9

    const-string p0, "UdfpsHbmController.e2e.setPeakRefreshRate"

    invoke-static {p0, v6}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    iget-object p0, v0, Lcom/google/android/systemui/fingerprint/HbmRequest;->onHbmEnabled:Ljava/lang/Runnable;

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_1

    :cond_8
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-nez p0, :cond_a

    const-string p0, "doEnableHbm | onHbmEnabled is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    iget-object p0, v0, Lcom/google/android/systemui/fingerprint/HbmRequest;->biometricExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/google/android/systemui/fingerprint/HbmRequest$enable$1;

    invoke-direct {p1, v0}, Lcom/google/android/systemui/fingerprint/HbmRequest$enable$1;-><init>(Lcom/google/android/systemui/fingerprint/HbmRequest;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_a
    :goto_2
    iput-boolean v5, v0, Lcom/google/android/systemui/fingerprint/HbmRequest;->finishedStarting:Z

    :goto_3
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
