.class public interface abstract Landroid/hardware/health/V2_1/IHealth;
.super Ljava/lang/Object;
.source "IHealth.java"

# interfaces
.implements Landroid/hardware/health/V2_0/IHealth;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/health/V2_1/IHealth$Stub;,
        Landroid/hardware/health/V2_1/IHealth$Proxy;,
        Landroid/hardware/health/V2_1/IHealth$shouldKeepScreenOnCallback;,
        Landroid/hardware/health/V2_1/IHealth$getHealthInfo_2_1Callback;,
        Landroid/hardware/health/V2_1/IHealth$getHealthConfigCallback;
    }
.end annotation


# virtual methods
.method public abstract getHealthConfig(Landroid/hardware/health/V2_1/IHealth$getHealthConfigCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHealthInfo_2_1(Landroid/hardware/health/V2_1/IHealth$getHealthInfo_2_1Callback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract shouldKeepScreenOn(Landroid/hardware/health/V2_1/IHealth$shouldKeepScreenOnCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
