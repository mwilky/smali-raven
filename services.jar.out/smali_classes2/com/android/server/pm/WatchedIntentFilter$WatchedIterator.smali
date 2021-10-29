.class Lcom/android/server/pm/WatchedIntentFilter$WatchedIterator;
.super Ljava/lang/Object;
.source "WatchedIntentFilter.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/WatchedIntentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatchedIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final mIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/WatchedIntentFilter;


# direct methods
.method constructor <init>(Lcom/android/server/pm/WatchedIntentFilter;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/pm/WatchedIntentFilter$WatchedIterator;->this$0:Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/WatchedIntentFilter$WatchedIterator;->mIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter$WatchedIterator;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0, p1}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter$WatchedIterator;->this$0:Lcom/android/server/pm/WatchedIntentFilter;

    invoke-static {v0}, Lcom/android/server/pm/WatchedIntentFilter;->access$000(Lcom/android/server/pm/WatchedIntentFilter;)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter$WatchedIterator;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter$WatchedIterator;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter$WatchedIterator;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter$WatchedIterator;->this$0:Lcom/android/server/pm/WatchedIntentFilter;

    invoke-static {v0}, Lcom/android/server/pm/WatchedIntentFilter;->access$000(Lcom/android/server/pm/WatchedIntentFilter;)V

    return-void
.end method
