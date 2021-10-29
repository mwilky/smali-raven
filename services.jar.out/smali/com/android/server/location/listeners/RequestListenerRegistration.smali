.class public Lcom/android/server/location/listeners/RequestListenerRegistration;
.super Lcom/android/server/location/listeners/ListenerRegistration;
.source "RequestListenerRegistration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TRequest:",
        "Ljava/lang/Object;",
        "T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Lcom/android/server/location/listeners/ListenerRegistration<",
        "TT",
        "Listener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRequest:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTRequest;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "TTRequest;TT",
            "Listener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/android/server/location/listeners/ListenerRegistration;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/server/location/listeners/RequestListenerRegistration;->mRequest:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getRequest()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTRequest;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/listeners/RequestListenerRegistration;->mRequest:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/listeners/RequestListenerRegistration;->mRequest:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
