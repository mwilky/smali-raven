.class public interface abstract Landroid/hardware/health/V2_1/IHealthInfoCallback;
.super Ljava/lang/Object;
.source "IHealthInfoCallback.java"

# interfaces
.implements Landroid/hardware/health/V2_0/IHealthInfoCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/health/V2_1/IHealthInfoCallback$Stub;,
        Landroid/hardware/health/V2_1/IHealthInfoCallback$Proxy;
    }
.end annotation


# virtual methods
.method public abstract healthInfoChanged_2_1(Landroid/hardware/health/V2_1/HealthInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
