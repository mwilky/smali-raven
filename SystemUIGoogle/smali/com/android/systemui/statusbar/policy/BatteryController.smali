.class public interface abstract Lcom/android/systemui/statusbar/policy/BatteryController;
.super Ljava/lang/Object;
.source "BatteryController.java"

# interfaces
.implements Lcom/android/systemui/demomode/DemoMode;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryController$EstimateFetchCompletion;,
        Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/demomode/DemoMode;",
        "Lcom/android/systemui/Dumpable;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;",
        ">;"
    }
.end annotation


# virtual methods
.method public clearLastPowerSaverStartView()V
    .locals 0

    return-void
.end method

.method public getEstimatedTimeRemainingString(Lcom/android/systemui/battery/BatteryMeterView$$ExternalSyntheticLambda1;)V
    .locals 0

    return-void
.end method

.method public getLastPowerSaverStartView()Ljava/lang/ref/WeakReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract isAodPowerSave()Z
.end method

.method public abstract isPluggedIn()Z
.end method

.method public isPluggedInWireless()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isPowerSave()Z
.end method

.method public isReverseOn()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isReverseSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isWirelessCharging()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract setPowerSaveMode(Landroid/view/View;Z)V
.end method

.method public setReverseState(Z)V
    .locals 0

    return-void
.end method
