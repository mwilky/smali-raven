.class public abstract Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
.super Ljava/lang/Object;
.source "TaskSnapshotPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "WriteQueueItem"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;)V

    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onDequeuedLocked()V
    .locals 0

    return-void
.end method

.method public onQueuedLocked()V
    .locals 0

    return-void
.end method

.method public abstract write()V
.end method
