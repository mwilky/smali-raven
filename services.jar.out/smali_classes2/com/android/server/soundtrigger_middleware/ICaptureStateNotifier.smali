.class public interface abstract Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;
.super Ljava/lang/Object;
.source "ICaptureStateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier$Listener;
    }
.end annotation


# virtual methods
.method public abstract registerListener(Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier$Listener;)Z
.end method

.method public abstract unregisterListener(Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier$Listener;)V
.end method
