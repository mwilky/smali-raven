.class public interface abstract Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;
.super Ljava/lang/Object;
.source "INotificationVoiceReplyServiceCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks$Stub;
    }
.end annotation


# virtual methods
.method public abstract onNotifAvailableForReplyChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onVoiceReplyHandled(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
