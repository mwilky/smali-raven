.class public Lcom/google/android/systemui/fingerprint/UdfpsHbmController;
.super Ljava/lang/Object;
.source "UdfpsHbmController.java"

# interfaces
.implements Lcom/android/systemui/biometrics/UdfpsHbmProvider;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/fingerprint/UdfpsHbmController$Injector;
    }
.end annotation


# static fields
.field static final REFRESH_RATE_GHBM_HZ:F = 60.0f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayExecutor:Ljava/util/concurrent/Executor;

.field private final mGhbmProvider:Lcom/google/android/systemui/fingerprint/UdfpsGhbmProvider;

.field private mHbmRequest:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;

.field private final mInjector:Lcom/google/android/systemui/fingerprint/UdfpsHbmController$Injector;

.field private final mLhbmProvider:Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mPeakRefreshRate:F


# direct methods
.method public static synthetic $r8$lambda$GBZW6XO7NF6VMrWowvrlGLZKhts(Lcom/google/android/systemui/fingerprint/UdfpsHbmController;Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->lambda$doEnableHbm$1(Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NeFQIiGmFkY-PHIVFOm0wmRSAzA(Lcom/google/android/systemui/fingerprint/UdfpsHbmController;Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->lambda$doDisableHbm$3(Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WuE6xa5RmaSUzGpKx5tRwbEnFzw(Lcom/google/android/systemui/fingerprint/UdfpsHbmController;Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->lambda$doEnableHbm$0(Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZUwy3TImQ1GhHYMWzO0MCl5AU9I(Lcom/google/android/systemui/fingerprint/UdfpsHbmController;Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->lambda$doDisableHbm$2(Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/google/android/systemui/fingerprint/UdfpsGhbmProvider;Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;Lcom/android/systemui/biometrics/AuthController;Landroid/hardware/display/DisplayManager;)V
    .locals 8

    new-instance v7, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$Injector;

    invoke-direct {v7, p7}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$Injector;-><init>(Landroid/hardware/display/DisplayManager;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/google/android/systemui/fingerprint/UdfpsGhbmProvider;Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;Lcom/android/systemui/biometrics/AuthController;Lcom/google/android/systemui/fingerprint/UdfpsHbmController$Injector;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/google/android/systemui/fingerprint/UdfpsGhbmProvider;Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;Lcom/android/systemui/biometrics/AuthController;Lcom/google/android/systemui/fingerprint/UdfpsHbmController$Injector;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mMainHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mDisplayExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mGhbmProvider:Lcom/google/android/systemui/fingerprint/UdfpsGhbmProvider;

    iput-object p5, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mLhbmProvider:Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;

    iput-object p6, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    iput-object p7, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mInjector:Lcom/google/android/systemui/fingerprint/UdfpsHbmController$Injector;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p2

    invoke-virtual {p7, p2}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$Injector;->getPeakRefreshRate(I)F

    move-result p2

    iput p2, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mPeakRefreshRate:F

    const-string p0, "persist.fingerprint.ghbm"

    const/4 p2, 0x0

    invoke-static {p0, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    xor-int/lit8 p0, p0, 0x1

    const/4 p2, -0x2

    const-string p3, "com.android.systemui.biometrics.UdfpsSurfaceView.hbmType"

    invoke-static {p1, p3, p0, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private doDisableHbm(Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mDisplayExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/systemui/fingerprint/UdfpsHbmController;Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private doEnableHbm(Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mDisplayExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/fingerprint/UdfpsHbmController;Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getRequiredRefreshRate(I)F
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mPeakRefreshRate:F

    return p0

    :cond_1
    const/high16 p0, 0x42700000    # 60.0f

    return p0
.end method

.method private synthetic lambda$doDisableHbm$2(Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;)V
    .locals 2

    const-string v0, "UdfpsHbmController"

    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsHbmListener()Landroid/hardware/fingerprint/IUdfpsHbmListener;

    move-result-object p0

    iget v1, p1, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;->hbmType:I

    iget p1, p1, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;->displayId:I

    invoke-interface {p0, v1, p1}, Landroid/hardware/fingerprint/IUdfpsHbmListener;->onHbmDisabled(II)V

    const-string p0, "disableHbm | requested to unfreeze the refresh rate"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "disableHbm"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$doDisableHbm$3(Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;Ljava/lang/Runnable;)V
    .locals 3

    iget v0, p1, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;->hbmType:I

    const-string v1, "UdfpsHbmController"

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doDisableHbm | unsupported HBM type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;->hbmType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mLhbmProvider:Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;

    invoke-virtual {v0}, Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;->disableLhbm()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mGhbmProvider:Lcom/google/android/systemui/fingerprint/UdfpsGhbmProvider;

    iget-object v2, p1, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Lcom/google/android/systemui/fingerprint/UdfpsGhbmProvider;->disableGhbm(Landroid/view/Surface;)V

    :goto_0
    const/4 v0, 0x0

    const-string v2, "UdfpsHbmController.e2e.disableHbm"

    invoke-static {v2, v0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/fingerprint/UdfpsHbmController;Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    const-string p0, "doDisableHbm | onHbmDisabled is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private synthetic lambda$doEnableHbm$0(Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;)V
    .locals 0

    iget-object p1, p1, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;->onHbmEnabled:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mHbmRequest:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;->finishedEnablingHbm:Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$doEnableHbm$1(Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;)V
    .locals 3

    const-string v0, "UdfpsHbmController"

    const-string v1, "doEnableHbm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;->hbmType:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doEnableHbm | unsupported HBM type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;->hbmType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mLhbmProvider:Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;

    invoke-virtual {v1}, Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;->enableLhbm()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mGhbmProvider:Lcom/google/android/systemui/fingerprint/UdfpsGhbmProvider;

    iget-object v2, p1, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;->surface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/fingerprint/UdfpsGhbmProvider;->enableGhbm(Landroid/view/Surface;)V

    :goto_0
    const/4 v1, 0x0

    const-string v2, "UdfpsHbmController.e2e.enableHbm"

    invoke-static {v2, v1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    iget-object v1, p1, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;->onHbmEnabled:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/fingerprint/UdfpsHbmController;Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    const-string p0, "doEnableHbm | onHbmEnabled is null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public disableHbm(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const-string v0, "UdfpsHbmController.disableHbm"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "UdfpsHbmController"

    const-string v1, "disableHbm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mHbmRequest:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;

    if-nez v1, :cond_0

    const-string p0, "disableHbm | HBM is already disabled"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v1}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsHbmListener()Landroid/hardware/fingerprint/IUdfpsHbmListener;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "disableHbm | mDisplayManagerCallback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    const-string v1, "UdfpsHbmController.e2e.disableHbm"

    invoke-static {v1, v0}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mHbmRequest:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;

    iget-boolean v1, v0, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;->beganEnablingHbm:Z

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;->args:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;

    invoke-direct {p0, v0, p1}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->doDisableHbm(Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;Ljava/lang/Runnable;)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mInjector:Lcom/google/android/systemui/fingerprint/UdfpsHbmController$Injector;

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$Injector;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mHbmRequest:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public enableHbm(ILandroid/view/Surface;Ljava/lang/Runnable;)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const-string v0, "UdfpsHbmController.enableHbm"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "UdfpsHbmController"

    const-string v1, "enableHbm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enableHbm | unsupported hbmType: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const-string p0, "enableHbm | surface must be non-null for GHBM"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v2}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsHbmListener()Landroid/hardware/fingerprint/IUdfpsHbmListener;

    move-result-object v2

    if-nez v2, :cond_2

    const-string p0, "enableHbm | mDisplayManagerCallback is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v2, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mHbmRequest:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;

    if-eqz v2, :cond_3

    const-string p0, "enableHbm | HBM is already requested"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 v2, 0x0

    const-string v3, "UdfpsHbmController.e2e.enableHbm"

    invoke-static {v3, v2}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    new-instance v2, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;

    iget-object v3, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;-><init>(IILandroid/view/Surface;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mHbmRequest:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;

    iget-object p1, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mInjector:Lcom/google/android/systemui/fingerprint/UdfpsHbmController$Injector;

    iget-object p2, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, p2}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsHbmListener()Landroid/hardware/fingerprint/IUdfpsHbmListener;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mHbmRequest:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;

    iget-object p2, p2, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;->args:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;

    iget p3, p2, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;->hbmType:I

    iget p2, p2, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;->displayId:I

    invoke-interface {p1, p3, p2}, Landroid/hardware/fingerprint/IUdfpsHbmListener;->onHbmEnabled(II)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enableHbm | requested to freeze the refresh rate for hbmType: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mHbmRequest:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;

    iget-object p2, p2, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;->args:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;

    iget p2, p2, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;->hbmType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p1, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mInjector:Lcom/google/android/systemui/fingerprint/UdfpsHbmController$Injector;

    iget-object p2, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mHbmRequest:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;

    iget-object p2, p2, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;->args:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;

    iget p2, p2, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;->displayId:I

    invoke-virtual {p1, p2}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$Injector;->getRefreshRate(I)F

    move-result p1

    iget-object p2, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mHbmRequest:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;

    iget-object p2, p2, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;->args:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;

    iget p2, p2, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;->hbmType:I

    invoke-direct {p0, p2}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->getRequiredRefreshRate(I)F

    move-result p2

    cmpl-float p1, p1, p2

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mHbmRequest:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;

    iget-object p1, p1, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;->args:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;

    iget p1, p1, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;->displayId:I

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->onDisplayChanged(I)V

    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 6

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mHbmRequest:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;

    const-string v1, "UdfpsHbmController"

    if-nez v0, :cond_0

    const-string p0, "onDisplayChanged | mHbmRequest is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, v0, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;->args:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;

    iget v0, v0, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;->displayId:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    iget-object p0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mHbmRequest:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;

    iget-object p0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;->args:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;

    iget p0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;->displayId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v4

    const-string p0, "onDisplayChanged | displayId: %d != %d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mInjector:Lcom/google/android/systemui/fingerprint/UdfpsHbmController$Injector;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$Injector;->getRefreshRate(I)F

    move-result p1

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mHbmRequest:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;

    iget-object v0, v0, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;->args:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;

    iget v0, v0, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;->hbmType:I

    invoke-direct {p0, v0}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->getRequiredRefreshRate(I)F

    move-result v0

    cmpl-float v5, p1, v0

    if-eqz v5, :cond_3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v4

    const-string p1, "onDisplayChanged | hz: %f != %f"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mHbmRequest:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;

    iget-boolean p0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;->finishedEnablingHbm:Z

    if-eqz p0, :cond_2

    const-string p0, "onDisplayChanged | refresh rate changed while HBM is enabled."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mHbmRequest:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;

    iget-boolean v0, v0, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;->beganEnablingHbm:Z

    if-eqz v0, :cond_4

    return-void

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayChanged | froze the refresh rate at hz: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->mHbmRequest:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;

    iput-boolean v4, p1, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;->beganEnablingHbm:Z

    iget-object p1, p1, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;->args:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;

    invoke-direct {p0, p1}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->doEnableHbm(Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
