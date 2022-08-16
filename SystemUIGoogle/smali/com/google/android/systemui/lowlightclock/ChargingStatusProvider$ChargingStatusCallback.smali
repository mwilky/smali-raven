.class public final Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$ChargingStatusCallback;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "ChargingStatusProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChargingStatusCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$ChargingStatusCallback;->this$0:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRefreshBatteryInfo(Lcom/android/settingslib/fuelgauge/BatteryStatus;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$ChargingStatusCallback;->this$0:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mBatteryState:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;

    iput-object p1, v0, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$BatteryState;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    invoke-virtual {p0}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->reportStatusToCallback()V

    return-void
.end method
