.class public final Lcom/google/android/systemui/elmyra/sensors/AssistGestureController$OPAQueryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AssistGestureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OPAQueryReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController$OPAQueryReceiver;->this$0:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.google.android.systemui.OPA_ELMYRA_QUERY_SUBMITTED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController$OPAQueryReceiver;->this$0:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

    iget-object p1, p1, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mCompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

    iget-object p2, p1, Lcom/google/android/systemui/elmyra/SnapshotLogger;->mSnapshots:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    iget-object p1, p1, Lcom/google/android/systemui/elmyra/SnapshotLogger;->mSnapshots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/elmyra/SnapshotLogger$Snapshot;

    iget-object p1, p1, Lcom/google/android/systemui/elmyra/SnapshotLogger$Snapshot;->mSnapshot:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    iget-object p1, p1, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->header:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;

    iput v0, p1, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->feedback:I

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController$OPAQueryReceiver;->this$0:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mWestworldLogger:Lcom/google/android/systemui/elmyra/WestworldLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0xaf

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    :cond_1
    return-void
.end method
