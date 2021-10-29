.class Lcom/android/server/connectivity/Vpn$Dependencies$1;
.super Ljava/lang/Object;
.source "Vpn.java"

# interfaces
.implements Landroid/net/DnsResolver$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Vpn$Dependencies;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/net/DnsResolver$Callback<",
        "Ljava/util/List<",
        "Ljava/net/InetAddress;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Vpn$Dependencies;

.field final synthetic val$endpoint:Ljava/lang/String;

.field final synthetic val$result:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn$Dependencies;Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->this$0:Lcom/android/server/connectivity/Vpn$Dependencies;

    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    iput-object p3, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$endpoint:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAnswer(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn$Dependencies$1;->onAnswer(Ljava/util/List;I)V

    return-void
.end method

.method public onAnswer(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;I)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Ljava/net/UnknownHostException;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$endpoint:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method public onError(Landroid/net/DnsResolver$DnsException;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Async dns resolver error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vpn"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Ljava/net/UnknownHostException;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$endpoint:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method
