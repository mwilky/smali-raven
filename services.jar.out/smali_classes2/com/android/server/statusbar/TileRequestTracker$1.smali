.class public Lcom/android/server/statusbar/TileRequestTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "TileRequestTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/statusbar/TileRequestTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/statusbar/TileRequestTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/statusbar/TileRequestTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string p1, "android.intent.extra.REPLACING"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v1, "android.intent.extra.UID"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    iget-object v1, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    invoke-static {v1}, Lcom/android/server/statusbar/TileRequestTracker;->-$$Nest$fgetmLock(Lcom/android/server/statusbar/TileRequestTracker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    invoke-static {v2}, Lcom/android/server/statusbar/TileRequestTracker;->-$$Nest$fgetmComponentsToRemove(Lcom/android/server/statusbar/TileRequestTracker;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    iget-object v2, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    invoke-static {v2}, Lcom/android/server/statusbar/TileRequestTracker;->-$$Nest$fgetmTrackingMap(Lcom/android/server/statusbar/TileRequestTracker;)Landroid/util/SparseArrayMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    invoke-static {v3}, Lcom/android/server/statusbar/TileRequestTracker;->-$$Nest$fgetmTrackingMap(Lcom/android/server/statusbar/TileRequestTracker;)Landroid/util/SparseArrayMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result v3

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_3

    iget-object v5, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    invoke-static {v5}, Lcom/android/server/statusbar/TileRequestTracker;->-$$Nest$fgetmTrackingMap(Lcom/android/server/statusbar/TileRequestTracker;)Landroid/util/SparseArrayMap;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    invoke-static {v6}, Lcom/android/server/statusbar/TileRequestTracker;->-$$Nest$fgetmComponentsToRemove(Lcom/android/server/statusbar/TileRequestTracker;)Landroid/util/ArraySet;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    invoke-static {p1}, Lcom/android/server/statusbar/TileRequestTracker;->-$$Nest$fgetmComponentsToRemove(Lcom/android/server/statusbar/TileRequestTracker;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_4

    iget-object v2, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    invoke-static {v2}, Lcom/android/server/statusbar/TileRequestTracker;->-$$Nest$fgetmComponentsToRemove(Lcom/android/server/statusbar/TileRequestTracker;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    invoke-static {v3}, Lcom/android/server/statusbar/TileRequestTracker;->-$$Nest$fgetmTrackingMap(Lcom/android/server/statusbar/TileRequestTracker;)Landroid/util/SparseArrayMap;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
