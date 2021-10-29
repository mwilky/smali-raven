.class public abstract Lcom/google/android/systemui/elmyra/gates/Gate;
.super Ljava/lang/Object;
.source "Gate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/elmyra/gates/Gate$Listener;
    }
.end annotation


# instance fields
.field private mActive:Z

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

.field private final mNotifyHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$UUkk1KGK2vlIERl4riPzxwc3kE4(Lcom/google/android/systemui/elmyra/gates/Gate;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->lambda$notifyListener$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mNotifyHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mActive:Z

    return-void
.end method

.method private synthetic lambda$notifyListener$0()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/systemui/elmyra/gates/Gate$Listener;->onGateChanged(Lcom/google/android/systemui/elmyra/gates/Gate;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mActive:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->onActivate()V

    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mActive:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->onDeactivate()V

    :cond_0
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final isActive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mActive:Z

    return p0
.end method

.method protected abstract isBlocked()Z
.end method

.method public final isBlocking()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->isBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected notifyListener()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mNotifyHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/elmyra/gates/Gate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/elmyra/gates/Gate$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/gates/Gate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected abstract onActivate()V
.end method

.method protected abstract onDeactivate()V
.end method

.method public setListener(Lcom/google/android/systemui/elmyra/gates/Gate$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
