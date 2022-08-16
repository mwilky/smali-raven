.class public final Lcom/android/systemui/biometrics/SidefpsController$1$doShow$1;
.super Ljava/lang/Object;
.source "SidefpsController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/SidefpsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/SidefpsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController$1$doShow$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController$1$doShow$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController;->overlayView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/SidefpsController;->createOverlayForDisplay()V

    goto :goto_0

    :cond_0
    const-string p0, "SidefpsController"

    const-string/jumbo v0, "overlay already shown"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
