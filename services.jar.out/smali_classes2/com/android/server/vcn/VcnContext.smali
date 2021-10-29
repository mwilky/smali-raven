.class public Lcom/android/server/vcn/VcnContext;
.super Ljava/lang/Object;
.source "VcnContext.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIsInTestMode:Z

.field private final mLooper:Landroid/os/Looper;

.field private final mVcnNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/vcn/VcnNetworkProvider;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing context"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/vcn/VcnContext;->mContext:Landroid/content/Context;

    const-string v0, "Missing looper"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Lcom/android/server/vcn/VcnContext;->mLooper:Landroid/os/Looper;

    const-string v0, "Missing networkProvider"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Lcom/android/server/vcn/VcnNetworkProvider;

    iput-object v0, p0, Lcom/android/server/vcn/VcnContext;->mVcnNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    iput-boolean p4, p0, Lcom/android/server/vcn/VcnContext;->mIsInTestMode:Z

    return-void
.end method


# virtual methods
.method public ensureRunningOnLooperThread()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnContext;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not running on VcnMgmtSvc thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/VcnContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/VcnContext;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public getVcnNetworkProvider()Lcom/android/server/vcn/VcnNetworkProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/VcnContext;->mVcnNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    return-object v0
.end method

.method public isInTestMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/vcn/VcnContext;->mIsInTestMode:Z

    return v0
.end method
