.class public final synthetic Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/backup/transport/TransportConnectionListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final onTransportConnectionResult(Lcom/android/server/backup/transport/BackupTransportClient;Lcom/android/server/backup/transport/TransportConnection;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/CompletableFuture;

    invoke-static {p0, p1, p2}, Lcom/android/server/backup/transport/TransportConnection;->$r8$lambda$0VZ8sZ9Ao1icvh_L9stwB6JPWwM(Ljava/util/concurrent/CompletableFuture;Lcom/android/server/backup/transport/BackupTransportClient;Lcom/android/server/backup/transport/TransportConnection;)V

    return-void
.end method
