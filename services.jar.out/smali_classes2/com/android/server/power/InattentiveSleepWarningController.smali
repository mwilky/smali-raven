.class public Lcom/android/server/power/InattentiveSleepWarningController;
.super Ljava/lang/Object;
.source "InattentiveSleepWarningController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mIsShown:Z

.field public mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method public static synthetic $r8$lambda$MgsCyrP4jeDbkqDflWs-QQ3Ghgw(Lcom/android/server/power/InattentiveSleepWarningController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/InattentiveSleepWarningController;->lambda$dismiss$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$VGA-25QpRdjtMTy_WkGM0KGH_M4(Lcom/android/server/power/InattentiveSleepWarningController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/power/InattentiveSleepWarningController;->showInternal()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/InattentiveSleepWarningController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$dismiss$0(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/power/InattentiveSleepWarningController;->dismissInternal(Z)V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "PowerManagerService.mLock"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/power/InattentiveSleepWarningController;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/InattentiveSleepWarningController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/InattentiveSleepWarningController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/InattentiveSleepWarningController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/InattentiveSleepWarningController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/power/InattentiveSleepWarningController;->mIsShown:Z

    return-void
.end method

.method public final dismissInternal(Z)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/InattentiveSleepWarningController;->getStatusBar()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->dismissInattentiveSleepWarning(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "InattentiveSleepWarning"

    const-string v0, "Failed to dismiss inattentive sleep warning"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final getStatusBar()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/InattentiveSleepWarningController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/InattentiveSleepWarningController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/InattentiveSleepWarningController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p0
.end method

.method public isShown()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "PowerManagerService.mLock"
        }
    .end annotation

    iget-boolean p0, p0, Lcom/android/server/power/InattentiveSleepWarningController;->mIsShown:Z

    return p0
.end method

.method public show()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "PowerManagerService.mLock"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/power/InattentiveSleepWarningController;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/InattentiveSleepWarningController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/InattentiveSleepWarningController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/power/InattentiveSleepWarningController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/InattentiveSleepWarningController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/InattentiveSleepWarningController;->mIsShown:Z

    return-void
.end method

.method public final showInternal()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/InattentiveSleepWarningController;->getStatusBar()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->showInattentiveSleepWarning()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "InattentiveSleepWarning"

    const-string v2, "Failed to show inattentive sleep warning"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/InattentiveSleepWarningController;->mIsShown:Z

    :goto_0
    return-void
.end method
