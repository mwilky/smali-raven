.class public abstract Lcom/android/server/location/injector/AppOpsHelper;
.super Ljava/lang/Object;
.source "AppOpsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/injector/AppOpsHelper$LocationAppOpListener;
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/location/injector/AppOpsHelper$LocationAppOpListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/injector/AppOpsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/server/location/injector/AppOpsHelper$LocationAppOpListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/injector/AppOpsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract checkOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z
.end method

.method public abstract finishOp(ILandroid/location/util/identity/CallerIdentity;)V
.end method

.method public abstract noteOp(ILandroid/location/util/identity/CallerIdentity;)Z
.end method

.method public abstract noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z
.end method

.method protected final notifyAppOpChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/injector/AppOpsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/injector/AppOpsHelper$LocationAppOpListener;

    invoke-interface {v1, p1}, Lcom/android/server/location/injector/AppOpsHelper$LocationAppOpListener;->onAppOpsChanged(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeListener(Lcom/android/server/location/injector/AppOpsHelper$LocationAppOpListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/injector/AppOpsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract startOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z
.end method
