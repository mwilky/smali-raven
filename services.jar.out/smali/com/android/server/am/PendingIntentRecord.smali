.class public final Lcom/android/server/am/PendingIntentRecord;
.super Landroid/content/IIntentSender$Stub;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;,
        Lcom/android/server/am/PendingIntentRecord$Key;
    }
.end annotation


# static fields
.field public static final FLAG_ACTIVITY_SENDER:I = 0x1

.field public static final FLAG_BROADCAST_SENDER:I = 0x2

.field public static final FLAG_SERVICE_SENDER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field canceled:Z

.field final controller:Lcom/android/server/am/PendingIntentController;

.field final key:Lcom/android/server/am/PendingIntentRecord$Key;

.field lastTag:Ljava/lang/String;

.field lastTagPrefix:Ljava/lang/String;

.field private mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowlistDuration:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;"
        }
    .end annotation
.end field

.field public final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;"
        }
    .end annotation
.end field

.field sent:Z

.field stringName:Ljava/lang/String;

.field final uid:I


# direct methods
.method public static synthetic $r8$lambda$0acvBWvihzGS4yw0LCNL-NJDvhU(Lcom/android/server/am/PendingIntentRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/PendingIntentController;Lcom/android/server/am/PendingIntentRecord$Key;I)V
    .locals 1

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iput p3, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private completeFinalize()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v2, p0}, Lcom/android/server/am/PendingIntentController;->decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method clearAllowBgActivityStarts(Landroid/os/IBinder;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public detachCancelListenersLocked()Landroid/os/RemoteCallbackList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " packageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " featureId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " type="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " flags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "activity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " who="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestCode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " requestResolvedType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2, v1}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " canceled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-eqz v0, :cond_9

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "allowlistDuration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    if-eqz v0, :cond_7

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->duration:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reasonCode:I

    invoke-static {v3}, Landroid/os/PowerWhitelistManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_9
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_a

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCancelCallbacks:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-ge v0, v1, :cond_a

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/am/PendingIntentRecord$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/am/PendingIntentRecord$$ExternalSyntheticLambda0;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public registerCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 13

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    return-void
.end method

.method public sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .locals 39

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    move-object/from16 v13, p4

    move-object/from16 v12, p12

    const/4 v0, 0x1

    if-eqz v14, :cond_0

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setDefusable(Z)V

    :cond_0
    if-eqz v12, :cond_1

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->setDefusable(Z)V

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-boolean v7, v15, Lcom/android/server/am/PendingIntentRecord;->canceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_16

    const/16 v11, -0x60

    if-eqz v7, :cond_2

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v11

    :catchall_0
    move-exception v0

    move-object/from16 v26, p3

    move/from16 v27, p10

    move/from16 v28, p11

    move-object v11, v15

    goto/16 :goto_21

    :cond_2
    :try_start_2
    iput-boolean v0, v15, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    iget-object v7, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_16

    const/high16 v8, 0x40000000    # 2.0f

    and-int/2addr v7, v8

    if-eqz v7, :cond_3

    :try_start_3
    iget-object v7, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v7, v15, v0}, Lcom/android/server/am/PendingIntentController;->cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :try_start_4
    iget-object v7, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_16

    if-eqz v7, :cond_4

    :try_start_5
    new-instance v7, Landroid/content/Intent;

    iget-object v8, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_4
    :try_start_6
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_16

    :goto_0
    move-object v10, v7

    :try_start_7
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_15

    const/high16 v7, 0x4000000

    and-int/2addr v2, v7

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    move v2, v0

    goto :goto_1

    :cond_5
    move v2, v7

    :goto_1
    if-nez v2, :cond_8

    if-eqz v14, :cond_7

    :try_start_8
    iget-object v8, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-virtual {v10, v14, v8}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    move-result v8

    and-int/lit8 v9, v8, 0x2

    if-nez v9, :cond_6

    iget-object v9, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :cond_6
    move-object/from16 v9, p3

    :goto_2
    move-object v8, v9

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v26, p3

    move/from16 v27, p10

    move/from16 v28, p11

    move-object v2, v10

    move-object v11, v15

    goto/16 :goto_21

    :cond_7
    :try_start_9
    iget-object v8, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_3
    move/from16 v9, p10

    and-int/lit16 v9, v9, -0xc4

    and-int v16, p11, v9

    :try_start_a
    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v17

    not-int v11, v9

    and-int v11, v17, v11

    or-int v11, v11, v16

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object/from16 v26, v8

    move/from16 v27, v9

    move/from16 v28, v16

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v26, v8

    move/from16 v27, v9

    move-object v2, v10

    move-object v11, v15

    move/from16 v28, v16

    goto/16 :goto_21

    :catchall_3
    move-exception v0

    move/from16 v9, p10

    move-object/from16 v26, p3

    move/from16 v28, p11

    move/from16 v27, v9

    move-object v2, v10

    move-object v11, v15

    goto/16 :goto_21

    :cond_8
    move/from16 v9, p10

    :try_start_b
    iget-object v8, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_14

    move/from16 v28, p11

    move-object/from16 v26, v8

    move/from16 v27, v9

    :goto_4
    :try_start_c
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_13

    if-eqz v8, :cond_9

    :try_start_d
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getPendingIntentLaunchFlags()I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v2, v10

    move-object v11, v15

    goto/16 :goto_21

    :cond_9
    :goto_5
    :try_start_e
    iget-object v9, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->options:Lcom/android/server/wm/SafeActivityOptions;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_13

    move-object v5, v9

    if-nez v5, :cond_a

    :try_start_f
    new-instance v9, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v9, v8}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    move-object v5, v9

    move-object/from16 v29, v5

    goto :goto_6

    :cond_a
    :try_start_10
    invoke-virtual {v5, v8}, Lcom/android/server/wm/SafeActivityOptions;->setCallerOptions(Landroid/app/ActivityOptions;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_13

    move-object/from16 v29, v5

    :goto_6
    :try_start_11
    iget-object v5, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_12

    if-eqz v5, :cond_b

    :try_start_12
    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    move-object v1, v5

    move-object v11, v1

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v2, v10

    move-object v11, v15

    move-object/from16 v5, v29

    goto/16 :goto_21

    :cond_b
    move-object v11, v1

    :goto_7
    :try_start_13
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_11

    const/4 v5, 0x2

    if-ne v1, v5, :cond_d

    :try_start_14
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    if-eqz v1, :cond_d

    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v1, v1

    if-le v1, v0, :cond_d

    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v1, v1

    new-array v1, v1, [Landroid/content/Intent;

    move-object v3, v1

    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    move-object v4, v1

    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    iget-object v5, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v5, v5

    invoke-static {v1, v7, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    iget-object v5, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    array-length v5, v5

    invoke-static {v1, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    array-length v1, v3

    sub-int/2addr v1, v0

    aput-object v10, v3, v1

    array-length v1, v4

    sub-int/2addr v1, v0

    aput-object v26, v4, v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object v2, v10

    move-object v1, v11

    move-object v11, v15

    move-object/from16 v5, v29

    goto/16 :goto_21

    :cond_d
    move-object/from16 v30, v3

    move-object/from16 v31, v4

    :goto_8
    :try_start_15
    monitor-exit v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v32

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v33

    const/16 v35, 0x0

    const/4 v1, 0x5

    if-eqz v11, :cond_12

    :try_start_16
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "setPendingIntentAllowlistDuration,reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    if-nez v3, :cond_e

    const-string v3, ""

    goto :goto_9

    :cond_e
    iget-object v3, v11, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    :goto_9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",pendingintent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v9}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_f
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;)V

    goto :goto_a

    :cond_10
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    :goto_a
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v4, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-wide v5, v11, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->duration:J

    iget v8, v11, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    iget v7, v11, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reasonCode:I

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v16, v3

    move/from16 v17, v32

    move/from16 v18, v9

    move/from16 v19, v4

    move-wide/from16 v20, v5

    move/from16 v22, v8

    move/from16 v23, v7

    invoke-virtual/range {v16 .. v24}, Landroid/app/ActivityManagerInternal;->tempAllowlistForPendingIntent(IIIJIILjava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    goto :goto_b

    :catchall_7
    move-exception v0

    move/from16 v20, v9

    move-object/from16 v22, v11

    move-object v11, v15

    goto/16 :goto_20

    :cond_12
    :try_start_17
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_f

    if-ne v2, v1, :cond_13

    if-eqz v12, :cond_13

    :try_start_18
    new-instance v2, Landroid/app/BroadcastOptions;

    invoke-direct {v2, v12}, Landroid/app/BroadcastOptions;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_14

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v4, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v20

    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistType()I

    move-result v22

    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistReasonCode()I

    move-result v23

    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistReason()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v16, v3

    move/from16 v17, v32

    move/from16 v18, v9

    move/from16 v19, v4

    invoke-virtual/range {v16 .. v24}, Landroid/app/ActivityManagerInternal;->tempAllowlistForPendingIntent(IIIJIILjava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    goto :goto_c

    :cond_13
    :goto_b
    nop

    :cond_14
    :goto_c
    if-eqz p5, :cond_15

    move v2, v0

    goto :goto_d

    :cond_15
    const/4 v2, 0x0

    :goto_d
    move/from16 v36, v2

    :try_start_19
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_f

    const/4 v3, -0x2

    if-ne v2, v3, :cond_16

    :try_start_1a
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentController;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v3}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserId()I

    move-result v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    move v2, v3

    move/from16 v37, v2

    goto :goto_e

    :cond_16
    move/from16 v37, v2

    :goto_e
    :try_start_1b
    iget v2, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_f

    if-eq v2, v9, :cond_17

    :try_start_1c
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2, v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isUidForeground(I)Z

    move-result v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    if-eqz v2, :cond_17

    move v2, v0

    goto :goto_f

    :cond_17
    const/4 v2, 0x0

    :goto_f
    move/from16 v38, v2

    :try_start_1d
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_f

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    move/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    goto/16 :goto_1c

    :pswitch_0
    :try_start_1e
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    invoke-virtual {v2, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v25, v13

    goto :goto_10

    :cond_18
    move-object/from16 v25, v3

    :goto_10
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v4, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v5, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-ne v5, v1, :cond_19

    move/from16 v20, v0

    goto :goto_11

    :cond_19
    const/16 v20, 0x0

    :goto_11
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v5, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    if-nez v2, :cond_1b

    if-eqz v38, :cond_1a

    goto :goto_12

    :cond_1a
    const/16 v24, 0x0

    goto :goto_13

    :cond_1b
    :goto_12
    move/from16 v24, v0

    :goto_13
    move-object/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v18, v10

    move-object/from16 v19, v26

    move-object/from16 v21, v1

    move-object/from16 v22, v5

    move/from16 v23, v37

    invoke-virtual/range {v16 .. v25}, Landroid/app/ActivityManagerInternal;->startServiceInPackage(ILandroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZLandroid/os/IBinder;)Landroid/content/ComponentName;
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    move/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    goto/16 :goto_1c

    :catch_0
    move-exception v0

    const/16 v1, -0x60

    move/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move v9, v1

    goto/16 :goto_1d

    :catch_1
    move-exception v0

    :try_start_1f
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startService intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    goto/16 :goto_1c

    :pswitch_1
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/16 v17, -0x1

    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    move-object/from16 v16, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, p1

    move-object/from16 v22, v10

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/wm/ActivityTaskManagerInternal;->sendActivityResult(ILandroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    move/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    goto/16 :goto_1c

    :pswitch_2
    :try_start_20
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_3
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    if-eqz v1, :cond_1c

    :try_start_21
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v1, v1

    if-le v1, v0, :cond_1c

    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v2, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    invoke-virtual {v3, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v16
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_3
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    move/from16 v3, v32

    move v4, v9

    move-object/from16 v7, v30

    move-object/from16 v8, v31

    move/from16 v20, v9

    move-object/from16 v9, p7

    move-object/from16 v21, v10

    move-object/from16 v10, v29

    move-object/from16 v22, v11

    move/from16 v11, v37

    move v12, v0

    move-object/from16 v13, p0

    move/from16 v14, v16

    :try_start_22
    invoke-virtual/range {v1 .. v14}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_2
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    goto :goto_14

    :catchall_8
    move-exception v0

    move-object v11, v15

    goto/16 :goto_1b

    :catchall_9
    move-exception v0

    move/from16 v20, v9

    move-object/from16 v22, v11

    move-object v11, v15

    goto :goto_15

    :cond_1c
    move/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    :try_start_23
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v2, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v0, 0x0

    const-string v16, "PendingIntentRecord"

    const/16 v17, 0x0

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    move-object/from16 v14, p4

    invoke-virtual {v3, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v19

    move/from16 v3, v32

    move/from16 v4, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v26

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v13, v29

    move/from16 v14, v37

    move-object v15, v0

    move-object/from16 v18, p0

    invoke-virtual/range {v1 .. v19}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_2
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    :goto_14
    move v9, v0

    goto/16 :goto_1d

    :catch_2
    move-exception v0

    goto :goto_16

    :catchall_a
    move-exception v0

    move/from16 v20, v9

    move-object/from16 v22, v11

    move-object/from16 v11, p0

    :goto_15
    goto/16 :goto_20

    :catch_3
    move-exception v0

    move/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    :goto_16
    :try_start_24
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startActivity intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    nop

    goto/16 :goto_1c

    :pswitch_3
    move/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move-object/from16 v15, p0

    :try_start_25
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    move-object/from16 v14, p4

    invoke-virtual {v1, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    move/from16 v23, v1

    if-eqz v23, :cond_1d

    move-object/from16 v19, v14

    goto :goto_17

    :cond_1d
    move-object/from16 v19, v3

    :goto_17
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    iget v4, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz p5, :cond_1e

    move/from16 v16, v0

    goto :goto_18

    :cond_1e
    const/16 v16, 0x0

    :goto_18
    const/16 v17, 0x0

    if-nez v23, :cond_20

    if-eqz v38, :cond_1f

    goto :goto_19

    :cond_1f
    const/16 v18, 0x0

    goto :goto_1a

    :cond_20
    :goto_19
    move/from16 v18, v0

    :goto_1a
    move/from16 v5, v20

    move/from16 v6, v32

    move-object/from16 v7, v21

    move-object/from16 v8, v26

    move-object/from16 v9, p5

    move/from16 v10, p1

    move-object/from16 v13, p6

    move-object/from16 v14, p12

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v37

    invoke-virtual/range {v1 .. v19}, Landroid/app/ActivityManagerInternal;->broadcastIntentInPackage(Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZLandroid/os/IBinder;)I

    move-result v0
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_4
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    if-nez v0, :cond_21

    const/16 v36, 0x0

    :cond_21
    move/from16 v9, v35

    goto :goto_1d

    :catchall_b
    move-exception v0

    move-object/from16 v11, p0

    :goto_1b
    move-object/from16 v10, v21

    goto :goto_20

    :catch_4
    move-exception v0

    :try_start_26
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startActivity intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    nop

    :goto_1c
    move/from16 v9, v35

    :goto_1d
    if-eqz v36, :cond_22

    const/16 v1, -0x60

    if-eq v9, v1, :cond_22

    :try_start_27
    new-instance v2, Landroid/content/Intent;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_7
    .catchall {:try_start_27 .. :try_end_27} :catchall_e

    move-object/from16 v10, v21

    :try_start_28
    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_6
    .catchall {:try_start_28 .. :try_end_28} :catchall_d

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v11, p0

    :try_start_29
    iget-object v0, v11, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v8, v0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    move-object/from16 v1, p5

    invoke-interface/range {v1 .. v8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_5
    .catchall {:try_start_29 .. :try_end_29} :catchall_c

    goto :goto_1f

    :catchall_c
    move-exception v0

    goto :goto_1e

    :catch_5
    move-exception v0

    goto :goto_1f

    :catchall_d
    move-exception v0

    move-object/from16 v11, p0

    :goto_1e
    move/from16 v35, v9

    goto :goto_20

    :catch_6
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_1f

    :catchall_e
    move-exception v0

    move-object/from16 v11, p0

    move-object/from16 v10, v21

    move/from16 v35, v9

    goto :goto_20

    :catch_7
    move-exception v0

    move-object/from16 v11, p0

    move-object/from16 v10, v21

    goto :goto_1f

    :cond_22
    move-object/from16 v11, p0

    move-object/from16 v10, v21

    :goto_1f
    invoke-static/range {v33 .. v34}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v9

    :catchall_f
    move-exception v0

    move/from16 v20, v9

    move-object/from16 v22, v11

    move-object v11, v15

    :goto_20
    invoke-static/range {v33 .. v34}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_10
    move-exception v0

    move-object/from16 v22, v11

    move-object v11, v15

    move-object v2, v10

    move-object/from16 v1, v22

    move-object/from16 v5, v29

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    goto :goto_21

    :catchall_11
    move-exception v0

    move-object/from16 v22, v11

    move-object v11, v15

    move-object v2, v10

    move-object/from16 v1, v22

    move-object/from16 v5, v29

    goto :goto_21

    :catchall_12
    move-exception v0

    move-object v11, v15

    move-object v2, v10

    move-object/from16 v5, v29

    goto :goto_21

    :catchall_13
    move-exception v0

    move-object v11, v15

    move-object v2, v10

    goto :goto_21

    :catchall_14
    move-exception v0

    move-object v11, v15

    move-object/from16 v26, p3

    move/from16 v28, p11

    move/from16 v27, v9

    move-object v2, v10

    goto :goto_21

    :catchall_15
    move-exception v0

    move/from16 v9, p10

    move-object v11, v15

    move-object/from16 v26, p3

    move/from16 v28, p11

    move/from16 v27, v9

    move-object v2, v10

    goto :goto_21

    :catchall_16
    move-exception v0

    move/from16 v9, p10

    move-object v11, v15

    move-object/from16 v26, p3

    move/from16 v28, p11

    move/from16 v27, v9

    :goto_21
    :try_start_2a
    monitor-exit v6
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_17

    throw v0

    :catchall_17
    move-exception v0

    goto :goto_21

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public sendWithResult(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 13

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method setAllowBgActivityStarts(Landroid/os/IBinder;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method setAllowlistDurationLocked(Landroid/os/IBinder;JIILjava/lang/String;)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    new-instance v8, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    move-object v2, v8

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;-><init>(JIILjava/lang/String;)V

    invoke-virtual {v0, p1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-gtz v0, :cond_2

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "PendingIntentRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-eqz v1, :cond_4

    const-string v1, " (allowlist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    if-eqz v1, :cond_2

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->duration:J

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reasonCode:I

    invoke-static {v4}, Landroid/os/PowerWhitelistManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method public unregisterCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    :cond_1
    return-void
.end method
