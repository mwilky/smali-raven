.class public abstract Lcom/android/server/oemlock/OemLock;
.super Ljava/lang/Object;
.source "OemLock.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getLockName()Ljava/lang/String;
.end method

.method public abstract isOemUnlockAllowedByCarrier()Z
.end method

.method public abstract isOemUnlockAllowedByDevice()Z
.end method

.method public abstract setOemUnlockAllowedByCarrier(Z[B)V
.end method

.method public abstract setOemUnlockAllowedByDevice(Z)V
.end method
