.class public final Lcom/android/systemui/biometrics/SidefpsController$overviewProxyListener$1$onTaskbarStatusUpdated$1$1;
.super Ljava/lang/Object;
.source "SidefpsController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/SidefpsController$overviewProxyListener$1;->onTaskbarStatusUpdated(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $view:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/biometrics/SidefpsController;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/biometrics/SidefpsController;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/biometrics/SidefpsController$overviewProxyListener$1$onTaskbarStatusUpdated$1$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    iput-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController$overviewProxyListener$1$onTaskbarStatusUpdated$1$1;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController$overviewProxyListener$1$onTaskbarStatusUpdated$1$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController$overviewProxyListener$1$onTaskbarStatusUpdated$1$1;->$view:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/SidefpsController;->updateOverlayVisibility(Landroid/view/View;)V

    return-void
.end method
