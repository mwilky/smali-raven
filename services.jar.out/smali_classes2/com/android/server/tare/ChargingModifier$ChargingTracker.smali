.class public final Lcom/android/server/tare/ChargingModifier$ChargingTracker;
.super Landroid/content/BroadcastReceiver;
.source "ChargingModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/ChargingModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChargingTracker"
.end annotation


# instance fields
.field public volatile mCharging:Z

.field public mIsSetup:Z

.field public final synthetic this$0:Lcom/android/server/tare/ChargingModifier;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCharging(Lcom/android/server/tare/ChargingModifier$ChargingTracker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mCharging:Z

    return p0
.end method

.method public constructor <init>(Lcom/android/server/tare/ChargingModifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->this$0:Lcom/android/server/tare/ChargingModifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mIsSetup:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tare/ChargingModifier;Lcom/android/server/tare/ChargingModifier$ChargingTracker-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/tare/ChargingModifier$ChargingTracker;-><init>(Lcom/android/server/tare/ChargingModifier;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.os.action.CHARGING"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/server/tare/ChargingModifier;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/server/tare/ChargingModifier;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received charging intent, fired @ "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean p1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mCharging:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mCharging:Z

    iget-object p0, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->this$0:Lcom/android/server/tare/ChargingModifier;

    invoke-static {p0}, Lcom/android/server/tare/ChargingModifier;->-$$Nest$fgetmIrs(Lcom/android/server/tare/ChargingModifier;)Lcom/android/server/tare/InternalResourceService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->onDeviceStateChanged()V

    goto :goto_0

    :cond_1
    const-string p2, "android.os.action.DISCHARGING"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/server/tare/ChargingModifier;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/server/tare/ChargingModifier;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Disconnected from power."

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean p1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mCharging:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mCharging:Z

    iget-object p0, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->this$0:Lcom/android/server/tare/ChargingModifier;

    invoke-static {p0}, Lcom/android/server/tare/ChargingModifier;->-$$Nest$fgetmIrs(Lcom/android/server/tare/ChargingModifier;)Lcom/android/server/tare/InternalResourceService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->onDeviceStateChanged()V

    :cond_3
    :goto_0
    return-void
.end method

.method public startTracking(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mIsSetup:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.CHARGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.DISCHARGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-class v0, Landroid/os/BatteryManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManager;

    invoke-virtual {p1}, Landroid/os/BatteryManager;->isCharging()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mCharging:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mIsSetup:Z

    return-void
.end method

.method public stopTracking(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mIsSetup:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->mIsSetup:Z

    return-void
.end method
