.class public interface abstract Lcom/android/wm/shell/startingsurface/IStartingWindow;
.super Ljava/lang/Object;
.source "IStartingWindow.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/startingsurface/IStartingWindow$Stub;
    }
.end annotation


# virtual methods
.method public abstract setStartingWindowListener(Lcom/android/wm/shell/startingsurface/IStartingWindowListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
