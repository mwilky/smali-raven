.class Lcom/android/server/utils/WatchedLongSparseArray$1;
.super Lcom/android/server/utils/Watcher;
.source "WatchedLongSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/WatchedLongSparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/utils/WatchedLongSparseArray;


# direct methods
.method constructor <init>(Lcom/android/server/utils/WatchedLongSparseArray;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/utils/WatchedLongSparseArray$1;->this$0:Lcom/android/server/utils/WatchedLongSparseArray;

    invoke-direct {p0}, Lcom/android/server/utils/Watcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/android/server/utils/Watchable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedLongSparseArray$1;->this$0:Lcom/android/server/utils/WatchedLongSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedLongSparseArray;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method
