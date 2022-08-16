.class public final Lcom/google/android/systemui/elmyra/gates/CameraVisibility;
.super Lcom/google/android/systemui/elmyra/gates/Gate;
.source "CameraVisibility.java"


# instance fields
.field public final mActivityManager:Landroid/app/IActivityManager;

.field public final mCameraAction:Lcom/google/android/systemui/elmyra/actions/CameraAction;

.field public final mCameraPackageName:Ljava/lang/String;

.field public mCameraShowing:Z

.field public final mExceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/actions/Action;",
            ">;"
        }
    .end annotation
.end field

.field public final mGateListener:Lcom/google/android/systemui/elmyra/gates/CameraVisibility$2;

.field public final mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPowerState:Lcom/google/android/systemui/elmyra/gates/PowerState;

.field public final mTaskStackListener:Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1;

.field public final mUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/actions/CameraAction;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/systemui/elmyra/actions/CameraAction;",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/actions/Action;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/gates/Gate;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1;-><init>(Lcom/google/android/systemui/elmyra/gates/CameraVisibility;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mTaskStackListener:Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1;

    new-instance v0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$2;-><init>(Lcom/google/android/systemui/elmyra/gates/CameraVisibility;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mGateListener:Lcom/google/android/systemui/elmyra/gates/CameraVisibility$2;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mCameraAction:Lcom/google/android/systemui/elmyra/actions/CameraAction;

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mExceptions:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p2, "activity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mActivityManager:Landroid/app/IActivityManager;

    new-instance p2, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    new-instance p3, Lcom/google/android/systemui/elmyra/gates/PowerState;

    invoke-direct {p3, p1}, Lcom/google/android/systemui/elmyra/gates/PowerState;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mPowerState:Lcom/google/android/systemui/elmyra/gates/PowerState;

    iput-object v0, p2, Lcom/google/android/systemui/elmyra/gates/Gate;->mListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

    iput-object v0, p3, Lcom/google/android/systemui/elmyra/gates/Gate;->mListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f130319

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mCameraPackageName:Ljava/lang/String;

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mUpdateHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final isBlocked()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mExceptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mExceptions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/elmyra/actions/Action;

    invoke-virtual {v2}, Lcom/google/android/systemui/elmyra/actions/Action;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mCameraShowing:Z

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mCameraAction:Lcom/google/android/systemui/elmyra/actions/CameraAction;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final isCameraShowing()Z
    .locals 9

    const-string v0, "Elmyra/CameraVisibility"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mCameraPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string/jumbo v4, "unable to check task stack"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_4

    :try_start_1
    iget-object v3, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mCameraPackageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    goto :goto_2

    :cond_1
    move v3, v1

    :goto_2
    invoke-virtual {v4, v5, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v4}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    move v5, v1

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v7, v3, :cond_3

    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mCameraPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v3, 0x64

    if-ne v0, v3, :cond_2

    move v0, v2

    goto :goto_5

    :catch_1
    :cond_2
    :goto_4
    move v0, v1

    goto :goto_5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :catch_2
    move-exception v3

    const-string v4, "Could not check camera foreground status"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :goto_5
    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mPowerState:Lcom/google/android/systemui/elmyra/gates/PowerState;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->isBlocking()Z

    move-result p0

    if-nez p0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public final onActivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/Gate;->activate()V

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mPowerState:Lcom/google/android/systemui/elmyra/gates/PowerState;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/Gate;->activate()V

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->isCameraShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mCameraShowing:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mActivityManager:Landroid/app/IActivityManager;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mTaskStackListener:Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Elmyra/CameraVisibility"

    const-string v1, "Could not register task stack listener"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onDeactivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/Gate;->deactivate()V

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mPowerState:Lcom/google/android/systemui/elmyra/gates/PowerState;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/Gate;->deactivate()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mActivityManager:Landroid/app/IActivityManager;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mTaskStackListener:Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Elmyra/CameraVisibility"

    const-string v1, "Could not unregister task stack listener"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
