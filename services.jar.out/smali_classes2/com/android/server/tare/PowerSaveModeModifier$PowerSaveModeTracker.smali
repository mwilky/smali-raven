.class public final Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;
.super Landroid/content/BroadcastReceiver;
.source "PowerSaveModeModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/PowerSaveModeModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PowerSaveModeTracker"
.end annotation


# instance fields
.field public mIsSetup:Z

.field public final mPowerManager:Landroid/os/PowerManager;

.field public volatile mPowerSaveModeEnabled:Z

.field public final synthetic this$0:Lcom/android/server/tare/PowerSaveModeModifier;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPowerSaveModeEnabled(Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->mPowerSaveModeEnabled:Z

    return p0
.end method

.method public constructor <init>(Lcom/android/server/tare/PowerSaveModeModifier;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->this$0:Lcom/android/server/tare/PowerSaveModeModifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->mIsSetup:Z

    invoke-static {p1}, Lcom/android/server/tare/PowerSaveModeModifier;->-$$Nest$fgetmIrs(Lcom/android/server/tare/PowerSaveModeModifier;)Lcom/android/server/tare/InternalResourceService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tare/PowerSaveModeModifier;Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;-><init>(Lcom/android/server/tare/PowerSaveModeModifier;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p1

    invoke-static {}, Lcom/android/server/tare/PowerSaveModeModifier;->-$$Nest$sfgetDEBUG()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/server/tare/PowerSaveModeModifier;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Power save mode changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fired @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean p2, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->mPowerSaveModeEnabled:Z

    if-eq p2, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->mPowerSaveModeEnabled:Z

    iget-object p0, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->this$0:Lcom/android/server/tare/PowerSaveModeModifier;

    invoke-static {p0}, Lcom/android/server/tare/PowerSaveModeModifier;->-$$Nest$fgetmIrs(Lcom/android/server/tare/PowerSaveModeModifier;)Lcom/android/server/tare/InternalResourceService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->onDeviceStateChanged()V

    :cond_1
    return-void
.end method

.method public startTracking(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->mIsSetup:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->mPowerSaveModeEnabled:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->mIsSetup:Z

    return-void
.end method

.method public stopTracking(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->mIsSetup:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/tare/PowerSaveModeModifier$PowerSaveModeTracker;->mIsSetup:Z

    return-void
.end method
