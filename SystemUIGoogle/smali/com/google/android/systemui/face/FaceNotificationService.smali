.class public final Lcom/google/android/systemui/face/FaceNotificationService;
.super Ljava/lang/Object;
.source "FaceNotificationService.java"


# instance fields
.field public mBroadcastReceiver:Lcom/google/android/systemui/face/FaceNotificationBroadcastReceiver;

.field public mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mKeyguardUpdateMonitorCallback:Lcom/google/android/systemui/face/FaceNotificationService$1;

.field public mNotificationQueued:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/systemui/face/FaceNotificationService$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/face/FaceNotificationService$1;-><init>(Lcom/google/android/systemui/face/FaceNotificationService;)V

    iput-object v0, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mKeyguardUpdateMonitorCallback:Lcom/google/android/systemui/face/FaceNotificationService$1;

    iput-object p1, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mContext:Landroid/content/Context;

    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance p1, Lcom/google/android/systemui/face/FaceNotificationBroadcastReceiver;

    iget-object v0, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/google/android/systemui/face/FaceNotificationBroadcastReceiver;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mBroadcastReceiver:Lcom/google/android/systemui/face/FaceNotificationBroadcastReceiver;

    return-void
.end method
