.class public final Lcom/google/android/systemui/reversecharging/ReverseChargingController$1;
.super Ljava/lang/Object;
.source "ReverseChargingController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/reversecharging/ReverseChargingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$1;->this$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPowerSaveChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$1;->this$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    iput-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mPowerSave:Z

    return-void
.end method

.method public final onWirelessChargingChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$1;->this$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    iput-boolean p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mWirelessCharging:Z

    return-void
.end method
