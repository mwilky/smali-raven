.class public Lcom/android/server/location/listeners/ListenerRegistration;
.super Ljava/lang/Object;
.source "ListenerRegistration.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/listeners/ListenerExecutor;"
    }
.end annotation


# instance fields
.field private mActive:Z

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private volatile mListener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT",
            "Listener;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "TT",
            "Listener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mActive:Z

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mListener:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/listeners/ListenerRegistration;)V

    new-instance v2, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/listeners/ListenerRegistration;)V

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/location/listeners/ListenerRegistration;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V

    return-void
.end method

.method protected final getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mActive:Z

    return v0
.end method

.method public final isRegistered()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mListener:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$executeOperation$0$ListenerRegistration()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mListener:Ljava/lang/Object;

    return-object v0
.end method

.method protected onActive()V
    .locals 0

    return-void
.end method

.method protected onInactive()V
    .locals 0

    return-void
.end method

.method protected onListenerUnregister()V
    .locals 0

    return-void
.end method

.method protected onOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "TT",
            "Listener;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected onRegister(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected onUnregister()V
    .locals 0

    return-void
.end method

.method final setActive(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mActive:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mActive:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[]"

    return-object v0
.end method

.method final unregisterInternal()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerRegistration;->mListener:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerRegistration;->onListenerUnregister()V

    return-void
.end method
