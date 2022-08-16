.class public final Lcom/google/android/systemui/columbus/gates/PowerSaveState;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "PowerSaveState.kt"


# instance fields
.field public batterySaverEnabled:Z

.field public isDeviceInteractive:Z

.field public final powerManager:Landroid/os/PowerManager;

.field public final receiver:Lcom/google/android/systemui/columbus/gates/PowerSaveState$receiver$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/PowerSaveState;->powerManager:Landroid/os/PowerManager;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/PowerSaveState$receiver$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/PowerSaveState$receiver$1;-><init>(Lcom/google/android/systemui/columbus/gates/PowerSaveState;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/PowerSaveState;->receiver:Lcom/google/android/systemui/columbus/gates/PowerSaveState$receiver$1;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/Gate;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/gates/PowerSaveState;->receiver:Lcom/google/android/systemui/columbus/gates/PowerSaveState$receiver$1;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/PowerSaveState;->refreshStatus()V

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/Gate;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/PowerSaveState;->receiver:Lcom/google/android/systemui/columbus/gates/PowerSaveState$receiver$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final refreshStatus()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/PowerSaveState;->powerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    move v0, v2

    goto :goto_1

    :cond_1
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/PowerSaveState;->batterySaverEnabled:Z

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/PowerSaveState;->powerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_4

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/PowerSaveState;->isDeviceInteractive:Z

    iget-boolean v3, p0, Lcom/google/android/systemui/columbus/gates/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v3, :cond_5

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    invoke-virtual {p0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
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

    const/16 v1, 0x5d

    invoke-static {v0, p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
