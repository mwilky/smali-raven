.class public final Lcom/android/systemui/biometrics/SidefpsController$overviewProxyListener$1;
.super Ljava/lang/Object;
.source "SidefpsController.kt"

# interfaces
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/SidefpsController;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/hardware/fingerprint/FingerprintManager;Landroid/view/WindowManager;Landroid/app/ActivityTaskManager;Lcom/android/systemui/recents/OverviewProxyService;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/SidefpsController;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/SidefpsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController$overviewProxyListener$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskbarStatusUpdated(ZZ)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController$overviewProxyListener$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    invoke-static {p1}, Lcom/android/systemui/biometrics/SidefpsController;->access$getOverlayView$p(Lcom/android/systemui/biometrics/SidefpsController;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController$overviewProxyListener$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/SidefpsController;->access$getHandler$p(Lcom/android/systemui/biometrics/SidefpsController;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/biometrics/SidefpsController$overviewProxyListener$1$onTaskbarStatusUpdated$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/biometrics/SidefpsController$overviewProxyListener$1$onTaskbarStatusUpdated$1$1;-><init>(Lcom/android/systemui/biometrics/SidefpsController;Landroid/view/View;)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
