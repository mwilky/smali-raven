.class final Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$startRipple$1$onViewAttachedToWindow$1;
.super Ljava/lang/Object;
.source "WiredChargingRippleController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$startRipple$1;->onViewAttachedToWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$startRipple$1$onViewAttachedToWindow$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$startRipple$1$onViewAttachedToWindow$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->access$getWindowManager$p(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$startRipple$1$onViewAttachedToWindow$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->getRippleView()Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method
