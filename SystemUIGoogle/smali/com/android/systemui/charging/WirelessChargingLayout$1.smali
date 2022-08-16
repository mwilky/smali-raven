.class public final Lcom/android/systemui/charging/WirelessChargingLayout$1;
.super Ljava/lang/Object;
.source "WirelessChargingLayout.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/charging/WirelessChargingLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/charging/WirelessChargingLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/charging/WirelessChargingLayout$1;->this$0:Lcom/android/systemui/charging/WirelessChargingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/charging/WirelessChargingLayout$1;->this$0:Lcom/android/systemui/charging/WirelessChargingLayout;

    iget-object p1, p1, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    const-wide/16 v0, 0x5dc

    iput-wide v0, p1, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->duration:J

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->startRipple(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/charging/WirelessChargingLayout$1;->this$0:Lcom/android/systemui/charging/WirelessChargingLayout;

    iget-object p1, p1, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
