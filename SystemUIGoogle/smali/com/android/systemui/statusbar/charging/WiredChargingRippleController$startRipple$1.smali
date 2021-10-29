.class public final Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$startRipple$1;
.super Ljava/lang/Object;
.source "WiredChargingRippleController.kt"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->startRipple()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$startRipple$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$startRipple$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->access$layoutRipple(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$startRipple$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->getRippleView()Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$startRipple$1$onViewAttachedToWindow$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$startRipple$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$startRipple$1$onViewAttachedToWindow$1;-><init>(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->startRipple(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$startRipple$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->getRippleView()Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
