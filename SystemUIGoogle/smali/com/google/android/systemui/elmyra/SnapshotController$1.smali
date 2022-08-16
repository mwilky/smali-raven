.class public final Lcom/google/android/systemui/elmyra/SnapshotController$1;
.super Landroid/os/Handler;
.source "SnapshotController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/SnapshotController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/SnapshotController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/SnapshotController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/SnapshotController$1;->this$0:Lcom/google/android/systemui/elmyra/SnapshotController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/SnapshotController$1;->this$0:Lcom/google/android/systemui/elmyra/SnapshotController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/SnapshotController;->mSnapshotListener:Lcom/google/android/systemui/elmyra/SnapshotController$Listener;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor$$ExternalSyntheticLambda0;->onSnapshotRequested(Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;)V

    :cond_1
    :goto_0
    return-void
.end method
