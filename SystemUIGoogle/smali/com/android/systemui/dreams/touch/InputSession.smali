.class public final Lcom/android/systemui/dreams/touch/InputSession;
.super Ljava/lang/Object;
.source "InputSession.java"


# instance fields
.field public final mGestureDetector:Landroid/view/GestureDetector;

.field public final mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field public final mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;Landroid/view/GestureDetector$OnGestureListener;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v0, p1}, Lcom/android/systemui/shared/system/InputMonitorCompat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/dreams/touch/InputSession;->mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    new-instance p1, Landroid/view/GestureDetector;

    invoke-direct {p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/android/systemui/dreams/touch/InputSession;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p3

    new-instance v1, Lcom/android/systemui/dreams/touch/InputSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p4}, Lcom/android/systemui/dreams/touch/InputSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/touch/InputSession;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;Z)V

    new-instance p2, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    iget-object p4, v0, Lcom/android/systemui/shared/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {p4}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object p4

    invoke-direct {p2, p4, p1, p3, v1}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)V

    iput-object p2, p0, Lcom/android/systemui/dreams/touch/InputSession;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    return-void
.end method
