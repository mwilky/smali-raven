.class public Lcom/google/android/systemui/elmyra/SnapshotLogger$Snapshot;
.super Ljava/lang/Object;
.source "SnapshotLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/SnapshotLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Snapshot"
.end annotation


# instance fields
.field final mSnapshot:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

.field final mTimestamp:J

.field final synthetic this$0:Lcom/google/android/systemui/elmyra/SnapshotLogger;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/elmyra/SnapshotLogger;Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/SnapshotLogger$Snapshot;->this$0:Lcom/google/android/systemui/elmyra/SnapshotLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/SnapshotLogger$Snapshot;->mSnapshot:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    iput-wide p3, p0, Lcom/google/android/systemui/elmyra/SnapshotLogger$Snapshot;->mTimestamp:J

    return-void
.end method


# virtual methods
.method public getSnapshot()Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/SnapshotLogger$Snapshot;->mSnapshot:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    return-object p0
.end method

.method getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/systemui/elmyra/SnapshotLogger$Snapshot;->mTimestamp:J

    return-wide v0
.end method
