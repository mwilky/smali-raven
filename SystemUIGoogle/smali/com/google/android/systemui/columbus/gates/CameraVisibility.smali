.class public final Lcom/google/android/systemui/columbus/gates/CameraVisibility;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "CameraVisibility.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCameraVisibility.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraVisibility.kt\ncom/google/android/systemui/columbus/gates/CameraVisibility\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,148:1\n1849#2,2:149\n1849#2,2:151\n*S KotlinDebug\n*F\n+ 1 CameraVisibility.kt\ncom/google/android/systemui/columbus/gates/CameraVisibility\n*L\n53#1:149,2\n73#1:151,2\n*E\n"
.end annotation


# instance fields
.field public final actionListener:Lcom/google/android/systemui/columbus/gates/CameraVisibility$actionListener$1;

.field public final activityManager:Landroid/app/IActivityManager;

.field public cameraShowing:Z

.field public exceptionActive:Z

.field public final exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;"
        }
    .end annotation
.end field

.field public final gateListener:Lcom/google/android/systemui/columbus/gates/CameraVisibility$gateListener$1;

.field public final keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final powerState:Lcom/google/android/systemui/columbus/gates/PowerState;

.field public final taskStackListener:Lcom/google/android/systemui/columbus/gates/CameraVisibility$taskStackListener$1;

.field public final updateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/google/android/systemui/columbus/gates/PowerState;Landroid/app/IActivityManager;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;",
            "Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;",
            "Lcom/google/android/systemui/columbus/gates/PowerState;",
            "Landroid/app/IActivityManager;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->exceptions:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->powerState:Lcom/google/android/systemui/columbus/gates/PowerState;

    iput-object p5, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->activityManager:Landroid/app/IActivityManager;

    iput-object p6, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->updateHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->packageManager:Landroid/content/pm/PackageManager;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/CameraVisibility$taskStackListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/CameraVisibility$taskStackListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/CameraVisibility;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->taskStackListener:Lcom/google/android/systemui/columbus/gates/CameraVisibility$taskStackListener$1;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/CameraVisibility$gateListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/CameraVisibility$gateListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/CameraVisibility;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->gateListener:Lcom/google/android/systemui/columbus/gates/CameraVisibility$gateListener$1;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/CameraVisibility$actionListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/CameraVisibility$actionListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/CameraVisibility;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->actionListener:Lcom/google/android/systemui/columbus/gates/CameraVisibility$actionListener$1;

    return-void
.end method


# virtual methods
.method public final isCameraShowing()Z
    .locals 10

    const-string v0, "com.google.android.GoogleCamera"

    const-string v1, "Columbus/CameraVis"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->activityManager:Landroid/app/IActivityManager;

    invoke-interface {v5, v4}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v5, :cond_1

    move-object v5, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    :goto_0
    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    const-string/jumbo v6, "unable to check task stack"

    invoke-static {v1, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move v5, v2

    :goto_2
    if-eqz v5, :cond_9

    :try_start_1
    iget-object v5, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->activityManager:Landroid/app/IActivityManager;

    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v0, v2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->activityManager:Landroid/app/IActivityManager;

    invoke-interface {v6}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v9, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v9, v5, :cond_5

    iget-object v8, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-nez v8, :cond_4

    move v8, v2

    goto :goto_3

    :cond_4
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    :goto_3
    if-eqz v8, :cond_5

    move v8, v4

    goto :goto_4

    :cond_5
    move v8, v2

    :goto_4
    if-eqz v8, :cond_3

    goto :goto_5

    :cond_6
    move-object v7, v3

    :goto_5
    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v7

    goto :goto_6

    :catch_1
    move-exception v0

    const-string v5, "Could not check camera foreground status"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_2
    :goto_6
    if-nez v3, :cond_7

    goto :goto_7

    :cond_7
    iget v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_8

    move v0, v4

    goto :goto_8

    :cond_8
    :goto_7
    move v0, v2

    :goto_8
    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->powerState:Lcom/google/android/systemui/columbus/gates/PowerState;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result p0

    if-nez p0, :cond_9

    move v2, v4

    :cond_9
    return v2
.end method

.method public final onActivate()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->exceptionActive:Z

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->exceptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/columbus/actions/Action;

    iget-object v3, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->actionListener:Lcom/google/android/systemui/columbus/gates/CameraVisibility$actionListener$1;

    iget-object v4, v2, Lcom/google/android/systemui/columbus/actions/Action;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v3, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->exceptionActive:Z

    iget-boolean v2, v2, Lcom/google/android/systemui/columbus/actions/Action;->isAvailable:Z

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->exceptionActive:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->isCameraShowing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->cameraShowing:Z

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->gateListener:Lcom/google/android/systemui/columbus/gates/CameraVisibility$gateListener$1;

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->powerState:Lcom/google/android/systemui/columbus/gates/PowerState;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->gateListener:Lcom/google/android/systemui/columbus/gates/CameraVisibility$gateListener$1;

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->activityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->taskStackListener:Lcom/google/android/systemui/columbus/gates/CameraVisibility$taskStackListener$1;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Columbus/CameraVis"

    const-string v3, "Could not register task stack listener"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-boolean v1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->exceptionActive:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->cameraShowing:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method

.method public final onDeactivate()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->gateListener:Lcom/google/android/systemui/columbus/gates/CameraVisibility$gateListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->unregisterListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->powerState:Lcom/google/android/systemui/columbus/gates/PowerState;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->gateListener:Lcom/google/android/systemui/columbus/gates/CameraVisibility$gateListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->unregisterListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->exceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/actions/Action;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->actionListener:Lcom/google/android/systemui/columbus/gates/CameraVisibility$actionListener$1;

    iget-object v1, v1, Lcom/google/android/systemui/columbus/actions/Action;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->activityManager:Landroid/app/IActivityManager;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->taskStackListener:Lcom/google/android/systemui/columbus/gates/CameraVisibility$taskStackListener$1;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "Columbus/CameraVis"

    const-string v1, "Could not unregister task stack listener"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/columbus/gates/Gate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [cameraShowing -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->cameraShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; exceptionActive -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->exceptionActive:Z

    const/16 v1, 0x5d

    invoke-static {v0, p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
