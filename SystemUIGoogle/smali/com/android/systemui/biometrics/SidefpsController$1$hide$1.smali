.class final Lcom/android/systemui/biometrics/SidefpsController$1$hide$1;
.super Ljava/lang/Object;
.source "SidefpsController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/SidefpsController$1;->hide(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/SidefpsController;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/SidefpsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController$1$hide$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController$1$hide$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/biometrics/SidefpsController;->access$setOverlayView(Lcom/android/systemui/biometrics/SidefpsController;Landroid/view/View;)V

    return-void
.end method
