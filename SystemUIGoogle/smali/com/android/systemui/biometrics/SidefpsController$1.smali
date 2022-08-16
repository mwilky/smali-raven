.class public final Lcom/android/systemui/biometrics/SidefpsController$1;
.super Landroid/hardware/fingerprint/ISidefpsController$Stub;
.source "SidefpsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/SidefpsController;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/hardware/fingerprint/FingerprintManager;Landroid/view/WindowManager;Landroid/app/ActivityTaskManager;Lcom/android/systemui/recents/OverviewProxyService;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final synthetic this$0:Lcom/android/systemui/biometrics/SidefpsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/SidefpsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    iput-object p2, p0, Lcom/android/systemui/biometrics/SidefpsController$1;->$mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-direct {p0}, Landroid/hardware/fingerprint/ISidefpsController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final hide(I)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController$1;->$mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/biometrics/SidefpsController$1$hide$1;

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/SidefpsController$1$hide$1;-><init>(Lcom/android/systemui/biometrics/SidefpsController;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final show(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    iget-object v0, v0, Lcom/android/systemui/biometrics/SidefpsController;->activityTaskManager:Landroid/app/ActivityTaskManager;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v1, :cond_5

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    :goto_0
    const-string p2, ""

    :cond_3
    const-string v0, "com.android.settings.biometrics.fingerprint.FingerprintSettings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v3

    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    iget-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController$1;->$mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p2, Lcom/android/systemui/biometrics/SidefpsController$1$doShow$1;

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/SidefpsController$1$doShow$1;-><init>(Lcom/android/systemui/biometrics/SidefpsController;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/SidefpsController$1;->hide(I)V

    :goto_3
    return-void
.end method
