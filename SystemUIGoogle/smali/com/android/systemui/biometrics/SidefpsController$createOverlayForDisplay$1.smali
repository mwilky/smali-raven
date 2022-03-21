.class final Lcom/android/systemui/biometrics/SidefpsController$createOverlayForDisplay$1;
.super Ljava/lang/Object;
.source "SidefpsController.kt"

# interfaces
.implements Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/SidefpsController;->createOverlayForDisplay()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $display:Landroid/view/Display;

.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/biometrics/SidefpsController;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/SidefpsController;Landroid/view/View;Landroid/view/Display;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController$createOverlayForDisplay$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    iput-object p2, p0, Lcom/android/systemui/biometrics/SidefpsController$createOverlayForDisplay$1;->$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/biometrics/SidefpsController$createOverlayForDisplay$1;->$display:Landroid/view/Display;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController$createOverlayForDisplay$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    invoke-static {v0}, Lcom/android/systemui/biometrics/SidefpsController;->access$getOverlayView$p(Lcom/android/systemui/biometrics/SidefpsController;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/SidefpsController$createOverlayForDisplay$1;->$view:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController$createOverlayForDisplay$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/SidefpsController$createOverlayForDisplay$1;->$display:Landroid/view/Display;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    const-string v2, "it.bounds"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, Lcom/android/systemui/biometrics/SidefpsController;->access$updateOverlayParams(Lcom/android/systemui/biometrics/SidefpsController;Landroid/view/Display;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/SidefpsController$createOverlayForDisplay$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    invoke-static {p1}, Lcom/android/systemui/biometrics/SidefpsController;->access$getWindowManager$p(Lcom/android/systemui/biometrics/SidefpsController;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/biometrics/SidefpsController$createOverlayForDisplay$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    invoke-static {v0}, Lcom/android/systemui/biometrics/SidefpsController;->access$getOverlayView$p(Lcom/android/systemui/biometrics/SidefpsController;)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsController$createOverlayForDisplay$1;->this$0:Lcom/android/systemui/biometrics/SidefpsController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/SidefpsController;->access$getOverlayViewParams$p(Lcom/android/systemui/biometrics/SidefpsController;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
