.class public interface abstract Lcom/google/android/systemui/elmyra/IElmyraServiceListener;
.super Ljava/lang/Object;
.source "IElmyraServiceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/elmyra/IElmyraServiceListener$Stub;
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

.method public abstract triggerAction()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
