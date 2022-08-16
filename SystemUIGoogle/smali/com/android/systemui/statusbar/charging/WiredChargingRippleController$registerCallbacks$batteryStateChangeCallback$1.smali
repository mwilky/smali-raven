.class public final Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$registerCallbacks$batteryStateChangeCallback$1;
.super Ljava/lang/Object;
.source "WiredChargingRippleController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$registerCallbacks$batteryStateChangeCallback$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBatteryLevelChanged(IZZ)V
    .locals 8

    iget-object p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$registerCallbacks$batteryStateChangeCallback$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPluggedInWireless()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$registerCallbacks$batteryStateChangeCallback$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    iget-object p3, p1, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->pluggedIn:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->pluggedIn:Ljava/lang/Boolean;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_1
    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController$registerCallbacks$batteryStateChangeCallback$1;->this$0:Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p1}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-object p3, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->lastTriggerTime:Ljava/lang/Long;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, p1, v0

    long-to-double v0, v0

    const/16 p3, 0x7d0

    int-to-double v2, p3

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget p3, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->debounceLevel:I

    int-to-double v6, p3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v2

    cmpl-double p3, v0, v4

    if-lez p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p3, 0x3

    iget v0, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->debounceLevel:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->debounceLevel:I

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->startRipple()V

    const/4 p3, 0x0

    iput p3, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->debounceLevel:I

    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;->lastTriggerTime:Ljava/lang/Long;

    :cond_4
    return-void
.end method
