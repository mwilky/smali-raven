.class public final Lcom/google/android/systemui/columbus/gates/CameraVisibility;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "CameraVisibility.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/gates/CameraVisibility$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCameraVisibility.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraVisibility.kt\ncom/google/android/systemui/columbus/gates/CameraVisibility\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,148:1\n1819#2,2:149\n1819#2,2:151\n*E\n*S KotlinDebug\n*F\n+ 1 CameraVisibility.kt\ncom/google/android/systemui/columbus/gates/CameraVisibility\n*L\n53#1,2:149\n73#1,2:151\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/gates/CameraVisibility$Companion;


# instance fields
.field private final actionListener:Lcom/google/android/systemui/columbus/gates/CameraVisibility$actionListener$1;

.field private final activityManager:Landroid/app/IActivityManager;

.field private cameraShowing:Z

.field private exceptionActive:Z

.field private final exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final gateListener:Lcom/google/android/systemui/columbus/gates/CameraVisibility$gateListener$1;

.field private final keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

.field private final packageManager:Landroid/content/pm/PackageManager;

.field private final powerState:Lcom/google/android/systemui/columbus/gates/PowerState;

.field private final taskStackListener:Lcom/google/android/systemui/columbus/gates/CameraVisibility$taskStackListener$1;

.field private final updateHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/gates/CameraVisibility$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/gates/CameraVisibility$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->Companion:Lcom/google/android/systemui/columbus/gates/CameraVisibility$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/google/android/systemui/columbus/gates/PowerState;Landroid/app/IActivityManager;Landroid/os/Handler;)V
    .locals 2
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

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exceptions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardGate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "powerState"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateHandler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;Landroid/os/Handler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

.method public static final synthetic access$getExceptions$p(Lcom/google/android/systemui/columbus/gates/CameraVisibility;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->exceptions:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getUpdateHandler$p(Lcom/google/android/systemui/columbus/gates/CameraVisibility;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->updateHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$setExceptionActive$p(Lcom/google/android/systemui/columbus/gates/CameraVisibility;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->exceptionActive:Z

    return-void
.end method

.method public static final synthetic access$updateBlocking(Lcom/google/android/systemui/columbus/gates/CameraVisibility;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->updateBlocking()V

    return-void
.end method

.method public static final synthetic access$updateCameraIsShowing(Lcom/google/android/systemui/columbus/gates/CameraVisibility;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->updateCameraIsShowing()V

    return-void
.end method

.method private final isCameraInForeground()Z
    .locals 8

    const-string v0, "com.google.android.GoogleCamera"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->activityManager:Landroid/app/IActivityManager;

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v0, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->activityManager:Landroid/app/IActivityManager;

    invoke-interface {p0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    const-string v5, "activityManager.runningAppProcesses"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v7, v4, :cond_1

    iget-object v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v6, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v1

    goto :goto_0

    :cond_1
    move v6, v2

    :goto_0
    if-eqz v6, :cond_0

    goto :goto_1

    :cond_2
    move-object v5, v3

    :goto_1
    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v0, "Columbus/CameraVis"

    const-string v4, "Could not check camera foreground status"

    invoke-static {v0, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    move-object v5, v3

    :goto_2
    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    iget p0, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_3
    const/16 p0, 0x64

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p0, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    move v1, v2

    :goto_5
    return v1
.end method

.method private final isCameraTopActivity()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->activityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v2, "com.google.android.GoogleCamera"

    invoke-static {p0, v2, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "Columbus/CameraVis"

    const-string v2, "unable to check task stack"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private final updateBlocking()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->exceptionActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->cameraShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method

.method private final updateCameraIsShowing()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->isCameraShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->cameraShowing:Z

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->updateBlocking()V

    return-void
.end method


# virtual methods
.method public final isCameraShowing()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->isCameraTopActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->isCameraInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->powerState:Lcom/google/android/systemui/columbus/gates/PowerState;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onActivate()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->exceptionActive:Z

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

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/columbus/actions/Action;->registerListener(Lcom/google/android/systemui/columbus/actions/Action$Listener;)V

    iget-boolean v2, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->exceptionActive:Z

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/actions/Action;->isAvailable()Z

    move-result v1

    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->exceptionActive:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->isCameraShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->cameraShowing:Z

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->gateListener:Lcom/google/android/systemui/columbus/gates/CameraVisibility$gateListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->powerState:Lcom/google/android/systemui/columbus/gates/PowerState;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->gateListener:Lcom/google/android/systemui/columbus/gates/CameraVisibility$gateListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->activityManager:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->taskStackListener:Lcom/google/android/systemui/columbus/gates/CameraVisibility$taskStackListener$1;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Columbus/CameraVis"

    const-string v2, "Could not register task stack listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/CameraVisibility;->updateBlocking()V

    return-void
.end method

.method protected onDeactivate()V
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

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/columbus/actions/Action;->unregisterListener(Lcom/google/android/systemui/columbus/actions/Action$Listener;)V

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

.method public toString()Ljava/lang/String;
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

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
