.class Lcom/android/server/am/BatteryStatsService$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "BatteryStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$2;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    const/16 v0, 0x15

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CONNECTED"

    goto :goto_0

    :cond_0
    const-string v0, "SUSPENDED"

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$2;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v2

    invoke-static {v2}, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->getDisplayTransport([I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/BatteryStatsService;->noteConnectivityChanged(ILjava/lang/String;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$2;->this$0:Lcom/android/server/am/BatteryStatsService;

    const/4 v1, -0x1

    const-string v2, "DISCONNECTED"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->noteConnectivityChanged(ILjava/lang/String;)V

    return-void
.end method
