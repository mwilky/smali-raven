.class final Lcom/android/server/power/PowerManagerService$LocalService;
.super Landroid/os/PowerManagerInternal;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/os/PowerManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public finishUidChanges()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->finishUidChangesInternal()V

    return-void
.end method

.method public getLastWakeup()Landroid/os/PowerManager$WakeData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$8400(Lcom/android/server/power/PowerManagerService;)Landroid/os/PowerManager$WakeData;

    move-result-object v0

    return-object v0
.end method

.method public getLowPowerState(I)Landroid/os/PowerSaveState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    move-result-object v0

    return-object v0
.end method

.method public interceptPowerKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->access$8500(Lcom/android/server/power/PowerManagerService;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5600(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->addListener(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    return-void
.end method

.method public setDeviceIdleMode(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method public setDeviceIdleTempWhitelist([I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleTempWhitelistInternal([I)V

    return-void
.end method

.method public setDeviceIdleWhitelist([I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleWhitelistInternal([I)V

    return-void
.end method

.method public setDozeOverrideFromDreamManager(II)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    nop

    :goto_0
    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    const/16 v0, 0xff

    if-le p2, v0, :cond_1

    :cond_0
    const/4 p2, -0x1

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$8000(Lcom/android/server/power/PowerManagerService;II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setDrawWakeLockOverrideFromSidekick(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->access$8300(Lcom/android/server/power/PowerManagerService;Z)V

    return-void
.end method

.method public setLightDeviceIdleMode(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setLightDeviceIdleModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->setMaximumScreenOffTimeoutFromDeviceAdminInternal(IJ)V

    return-void
.end method

.method public setPowerBoost(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$4500(Lcom/android/server/power/PowerManagerService;II)V

    return-void
.end method

.method public setPowerMode(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;IZ)Z

    return-void
.end method

.method public setScreenBrightnessOverrideFromWindowManager(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const/high16 p1, 0x7fc00000    # Float.NaN

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->access$7900(Lcom/android/server/power/PowerManagerService;F)V

    return-void
.end method

.method public setUserActivityTimeoutOverrideFromWindowManager(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$8200(Lcom/android/server/power/PowerManagerService;J)V

    return-void
.end method

.method public setUserInactiveOverrideFromWindowManager()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$8100(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method

.method public startUidChanges()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->startUidChangesInternal()V

    return-void
.end method

.method public uidActive(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->uidActiveInternal(I)V

    return-void
.end method

.method public uidGone(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->uidGoneInternal(I)V

    return-void
.end method

.method public uidIdle(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->uidIdleInternal(I)V

    return-void
.end method

.method public updateUidProcState(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->updateUidProcStateInternal(II)V

    return-void
.end method

.method public wasDeviceIdleFor(J)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->wasDeviceIdleForInternal(J)Z

    move-result v0

    return v0
.end method
