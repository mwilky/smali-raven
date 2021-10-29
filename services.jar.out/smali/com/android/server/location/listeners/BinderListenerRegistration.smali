.class public abstract Lcom/android/server/location/listeners/BinderListenerRegistration;
.super Lcom/android/server/location/listeners/RemoteListenerRegistration;
.source "BinderListenerRegistration.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/listeners/BinderListenerRegistration$BinderKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TRequest:",
        "Ljava/lang/Object;",
        "T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Lcom/android/server/location/listeners/RemoteListenerRegistration<",
        "TTRequest;TT",
        "Listener;",
        ">;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRequest;",
            "Landroid/location/util/identity/CallerIdentity;",
            "TT",
            "Listener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/listeners/RemoteListenerRegistration;-><init>(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Ljava/lang/Object;)V

    return-void
.end method

.method private static getBinderFromKey(Ljava/lang/Object;)Landroid/os/IBinder;
    .locals 2

    instance-of v0, p0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/os/IBinder;

    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/android/server/location/listeners/BinderListenerRegistration$BinderKey;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/android/server/location/listeners/BinderListenerRegistration$BinderKey;

    invoke-interface {v0}, Lcom/android/server/location/listeners/BinderListenerRegistration$BinderKey;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key must be IBinder or BinderKey"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/listeners/BinderListenerRegistration;->getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/listeners/BinderListenerRegistration;->getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binder registration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/BinderListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/listeners/BinderListenerRegistration;->remove()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected onBinderListenerRegister()V
    .locals 0

    return-void
.end method

.method protected onBinderListenerUnregister()V
    .locals 0

    return-void
.end method

.method public onOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V
    .locals 3
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

    instance-of v0, p2, Landroid/os/RemoteException;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/listeners/BinderListenerRegistration;->getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/location/listeners/BinderListenerRegistration;->remove()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->onOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method protected final onRemovableListenerRegister()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/location/listeners/BinderListenerRegistration;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/location/listeners/BinderListenerRegistration;->getBinderFromKey(Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/android/server/location/listeners/BinderListenerRegistration;->remove()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/location/listeners/BinderListenerRegistration;->onBinderListenerRegister()V

    return-void
.end method

.method protected final onRemovableListenerUnregister()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/location/listeners/BinderListenerRegistration;->onBinderListenerUnregister()V

    invoke-virtual {p0}, Lcom/android/server/location/listeners/BinderListenerRegistration;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/location/listeners/BinderListenerRegistration;->getBinderFromKey(Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
