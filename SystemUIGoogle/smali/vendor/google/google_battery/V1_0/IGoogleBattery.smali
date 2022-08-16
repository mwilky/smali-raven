.class public interface abstract Lvendor/google/google_battery/V1_0/IGoogleBattery;
.super Ljava/lang/Object;
.source "IGoogleBattery.java"

# interfaces
.implements Landroid/os/IHwInterface;


# virtual methods
.method public abstract getChargingStageAndDeadline(Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setChargingDeadline()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
