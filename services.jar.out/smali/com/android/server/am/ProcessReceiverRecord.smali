.class final Lcom/android/server/am/ProcessReceiverRecord;
.super Ljava/lang/Object;
.source "ProcessReceiverRecord.java"


# instance fields
.field final mApp:Lcom/android/server/am/ProcessRecord;

.field private final mCurReceivers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ReceiverList;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceivers:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    iput-object p1, p0, Lcom/android/server/am/ProcessReceiverRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method addCurReceiver(Lcom/android/server/am/BroadcastRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addReceiver(Lcom/android/server/am/ReceiverList;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    const-string v1, "  - "

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Current mReceivers:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceivers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceivers:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mReceivers:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method getCurReceiverAt(I)Lcom/android/server/am/BroadcastRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    return-object v0
.end method

.method getReceiverAt(I)Lcom/android/server/am/ReceiverList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ReceiverList;

    return-object v0
.end method

.method hasCurReceiver(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method numberOfCurReceivers()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    return v0
.end method

.method numberOfReceivers()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    return v0
.end method

.method onCleanupApplicationRecordLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ProcessReceiverRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ReceiverList;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->removeReceiverLocked(Lcom/android/server/am/ReceiverList;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method removeCurReceiver(Lcom/android/server/am/BroadcastRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mCurReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeReceiver(Lcom/android/server/am/ReceiverList;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
