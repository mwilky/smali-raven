.class public final Lcom/google/android/systemui/elmyra/SnapshotController;
.super Ljava/lang/Object;
.source "SnapshotController.java"

# interfaces
.implements Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/elmyra/SnapshotController$Listener;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLastGestureStage:I

.field private final mSnapshotDelayAfterGesture:I

.field private mSnapshotListener:Lcom/google/android/systemui/elmyra/SnapshotController$Listener;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/SnapshotConfiguration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/elmyra/SnapshotController;->mLastGestureStage:I

    new-instance v0, Lcom/google/android/systemui/elmyra/SnapshotController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/elmyra/SnapshotController$1;-><init>(Lcom/google/android/systemui/elmyra/SnapshotController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/SnapshotController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/google/android/systemui/elmyra/SnapshotConfiguration;->getSnapshotDelayAfterGesture()I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/elmyra/SnapshotController;->mSnapshotDelayAfterGesture:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/elmyra/SnapshotController;Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/SnapshotController;->requestSnapshot(Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;)V

    return-void
.end method

.method private requestSnapshot(Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/SnapshotController;->mSnapshotListener:Lcom/google/android/systemui/elmyra/SnapshotController$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/google/android/systemui/elmyra/SnapshotController$Listener;->onSnapshotRequested(Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onGestureDetected(Lcom/google/android/systemui/elmyra/sensors/GestureSensor;Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 3

    new-instance p1, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;

    invoke-direct {p1}, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;-><init>()V

    const/4 v0, 0x1

    iput v0, p1, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->gestureType:I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;->getActionId()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    iput-wide v1, p1, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->identifier:J

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/systemui/elmyra/SnapshotController;->mLastGestureStage:I

    iget-object p2, p0, Lcom/google/android/systemui/elmyra/SnapshotController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget p0, p0, Lcom/google/android/systemui/elmyra/SnapshotController;->mSnapshotDelayAfterGesture:I

    int-to-long v0, p0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onGestureProgress(Lcom/google/android/systemui/elmyra/sensors/GestureSensor;FI)V
    .locals 2

    iget p1, p0, Lcom/google/android/systemui/elmyra/SnapshotController;->mLastGestureStage:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    if-eq p3, p2, :cond_0

    new-instance p1, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;

    invoke-direct {p1}, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->identifier:J

    iput p2, p1, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->gestureType:I

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/SnapshotController;->requestSnapshot(Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;)V

    :cond_0
    iput p3, p0, Lcom/google/android/systemui/elmyra/SnapshotController;->mLastGestureStage:I

    return-void
.end method

.method public onWestworldPull()V
    .locals 3

    new-instance v0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;

    invoke-direct {v0}, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->gestureType:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->identifier:J

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/SnapshotController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setListener(Lcom/google/android/systemui/elmyra/SnapshotController$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/SnapshotController;->mSnapshotListener:Lcom/google/android/systemui/elmyra/SnapshotController$Listener;

    return-void
.end method
