.class public abstract Lcom/android/server/location/listeners/RemovableListenerRegistration;
.super Lcom/android/server/location/listeners/RequestListenerRegistration;
.source "RemovableListenerRegistration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TRequest:",
        "Ljava/lang/Object;",
        "T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Lcom/android/server/location/listeners/RequestListenerRegistration<",
        "TTRequest;TT",
        "Listener;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile mKey:Ljava/lang/Object;


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

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/listeners/RequestListenerRegistration;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/location/listeners/ListenerMultiplexer<",
            "*-TT",
            "Listener;",
            "**>;"
        }
    .end annotation
.end method

.method protected final onRegister(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onRemovableListenerRegister()V

    return-void
.end method

.method protected onRemovableListenerRegister()V
    .locals 0

    return-void
.end method

.method protected onRemovableListenerUnregister()V
    .locals 0

    return-void
.end method

.method protected final onUnregister()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onRemovableListenerUnregister()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    return-void
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    :cond_0
    return-void
.end method
