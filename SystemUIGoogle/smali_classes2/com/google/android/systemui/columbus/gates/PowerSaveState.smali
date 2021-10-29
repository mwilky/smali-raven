.class public final Lcom/google/android/systemui/columbus/gates/PowerSaveState;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "PowerSaveState.kt"


# instance fields
.field private batterySaverEnabled:Z

.field private isDeviceInteractive:Z

.field private final powerManager:Landroid/os/PowerManager;

.field private final receiver:Lcom/google/android/systemui/columbus/gates/PowerSaveState$receiver$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;Landroid/os/Handler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/PowerSaveState;->powerManager:Landroid/os/PowerManager;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/PowerSaveState$receiver$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/PowerSaveState$receiver$1;-><init>(Lcom/google/android/systemui/columbus/gates/PowerSaveState;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/PowerSaveState;->receiver:Lcom/google/android/systemui/columbus/gates/PowerSaveState$receiver$1;

    return-void
.end method

.method public static final synthetic access$refreshStatus(Lcom/google/android/systemui/columbus/gates/PowerSaveState;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/PowerSaveState;->refreshStatus()V

    return-void
.end method

.method private final refreshStatus()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/PowerSaveState;->powerManager:Landroid/os/PowerManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_0
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/PowerSaveState;->batterySaverEnabled:Z

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/PowerSaveState;->powerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_2
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/PowerSaveState;->isDeviceInteractive:Z

    iget-boolean v1, p0, Lcom/google/android/systemui/columbus/gates/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method


# virtual methods
.method protected onActivate()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/Gate;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/columbus/gates/PowerSaveState;->receiver:Lcom/google/android/systemui/columbus/gates/PowerSaveState$receiver$1;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/PowerSaveState;->refreshStatus()V

    return-void
.end method

.method protected onDeactivate()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/Gate;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/PowerSaveState;->receiver:Lcom/google/android/systemui/columbus/gates/PowerSaveState$receiver$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/columbus/gates/Gate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[batterySaverEnabled -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/systemui/columbus/gates/PowerSaveState;->batterySaverEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; isDeviceInteractive -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/gates/PowerSaveState;->isDeviceInteractive:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
