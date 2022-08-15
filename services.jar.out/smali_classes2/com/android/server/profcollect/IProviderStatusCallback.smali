.class public interface abstract Lcom/android/server/profcollect/IProviderStatusCallback;
.super Ljava/lang/Object;
.source "IProviderStatusCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/profcollect/IProviderStatusCallback$Stub;,
        Lcom/android/server/profcollect/IProviderStatusCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onProviderReady()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
