.class public interface abstract Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback;
.super Ljava/lang/Object;
.source "ISmartspaceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract getSmartspaceState()Lcom/android/systemui/shared/system/smartspace/SmartspaceState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setVisibility(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
