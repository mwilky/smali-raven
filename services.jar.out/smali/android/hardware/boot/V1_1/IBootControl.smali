.class public interface abstract Landroid/hardware/boot/V1_1/IBootControl;
.super Ljava/lang/Object;
.source "IBootControl.java"

# interfaces
.implements Landroid/hardware/boot/V1_0/IBootControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/boot/V1_1/IBootControl$Stub;,
        Landroid/hardware/boot/V1_1/IBootControl$Proxy;
    }
.end annotation


# virtual methods
.method public abstract getSnapshotMergeStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setSnapshotMergeStatus(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
