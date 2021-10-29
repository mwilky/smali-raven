.class Lcom/android/systemui/biometrics/SidefpsController$1;
.super Landroid/hardware/fingerprint/ISidefpsController$Stub;
.source "SidefpsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/SidefpsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/SidefpsController;


# direct methods
.method public static synthetic $r8$lambda$dCeXVZoGT6hUslFNBbvt47oRQP0(Lcom/android/systemui/biometrics/SidefpsController$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/SidefpsController$1;->lambda$hide$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$gNzb8YCtHAhVvM9op9SO1-uZKQk(Lcom/android/systemui/biometrics/SidefpsController$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/SidefpsController$1;->lambda$show$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/biometrics/SidefpsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    invoke-direct {p0}, Landroid/hardware/fingerprint/ISidefpsController$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$hide$1()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    invoke-static {v0}, Lcom/android/systemui/biometrics/SidefpsController;->access$100(Lcom/android/systemui/biometrics/SidefpsController;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/biometrics/SidefpsController;->access$202(Lcom/android/systemui/biometrics/SidefpsController;Z)Z

    return-void
.end method

.method private synthetic lambda$show$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    invoke-static {v0}, Lcom/android/systemui/biometrics/SidefpsController;->access$300(Lcom/android/systemui/biometrics/SidefpsController;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/biometrics/SidefpsController;->access$202(Lcom/android/systemui/biometrics/SidefpsController;Z)Z

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    invoke-static {v0}, Lcom/android/systemui/biometrics/SidefpsController;->access$000(Lcom/android/systemui/biometrics/SidefpsController;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/biometrics/SidefpsController$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/SidefpsController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/SidefpsController$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    invoke-static {v0}, Lcom/android/systemui/biometrics/SidefpsController;->access$000(Lcom/android/systemui/biometrics/SidefpsController;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/biometrics/SidefpsController$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/SidefpsController$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/SidefpsController$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
