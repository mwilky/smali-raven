.class Lcom/google/android/systemui/reversecharging/ReverseChargingController$1;
.super Ljava/lang/Object;
.source "ReverseChargingController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/reversecharging/ReverseChargingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$1;->this$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPowerSaveChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$1;->this$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    invoke-static {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->access$102(Lcom/google/android/systemui/reversecharging/ReverseChargingController;Z)Z

    return-void
.end method

.method public onWirelessChargingChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$1;->this$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    invoke-static {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->access$202(Lcom/google/android/systemui/reversecharging/ReverseChargingController;Z)Z

    return-void
.end method
