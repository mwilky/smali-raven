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
.field final synthetic $mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field final synthetic this$0:Lcom/android/systemui/biometrics/SidefpsController;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/SidefpsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    iput-object p2, p0, Lcom/android/systemui/biometrics/SidefpsController$1;->$mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-direct {p0}, Landroid/hardware/fingerprint/ISidefpsController$Stub;-><init>()V

    return-void
.end method

.method private final doShow()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController$1;->$mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/biometrics/SidefpsController$1$doShow$1;

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/SidefpsController$1$doShow$1;-><init>(Lcom/android/systemui/biometrics/SidefpsController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public hide(I)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController$1;->$mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/biometrics/SidefpsController$1$hide$1;

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/SidefpsController$1$hide$1;-><init>(Lcom/android/systemui/biometrics/SidefpsController;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public show(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    invoke-static {v0}, Lcom/android/systemui/biometrics/SidefpsController;->access$getActivityTaskManager$p(Lcom/android/systemui/biometrics/SidefpsController;)Landroid/app/ActivityTaskManager;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/systemui/biometrics/SidefpsControllerKt;->access$isReasonToShow(ILandroid/app/ActivityTaskManager;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/SidefpsController$1;->doShow()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/SidefpsController$1;->hide(I)V

    :goto_0
    return-void
.end method
