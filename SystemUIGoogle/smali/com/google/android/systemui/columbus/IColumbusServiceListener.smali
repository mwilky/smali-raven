.class public interface abstract Lcom/google/android/systemui/columbus/IColumbusServiceListener;
.super Ljava/lang/Object;
.source "IColumbusServiceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/IColumbusServiceListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract setListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
