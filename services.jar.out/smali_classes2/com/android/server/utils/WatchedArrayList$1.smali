.class public Lcom/android/server/utils/WatchedArrayList$1;
.super Lcom/android/server/utils/Watcher;
.source "WatchedArrayList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/WatchedArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/utils/WatchedArrayList;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/WatchedArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/utils/WatchedArrayList$1;->this$0:Lcom/android/server/utils/WatchedArrayList;

    invoke-direct {p0}, Lcom/android/server/utils/Watcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/android/server/utils/Watchable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList$1;->this$0:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method
