.class public interface abstract Lvendor/google/google_battery/V1_0/IGoogleBattery;
.super Ljava/lang/Object;
.source "IGoogleBattery.java"

# interfaces
.implements Landroid/os/IHwInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/google/google_battery/V1_0/IGoogleBattery$getChargingStageAndDeadlineCallback;
    }
.end annotation


# virtual methods
.method public abstract getChargingStageAndDeadline(Lvendor/google/google_battery/V1_0/IGoogleBattery$getChargingStageAndDeadlineCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setChargingDeadline(I)B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
