.class public Lcom/android/server/vcn/VcnContext;
.super Ljava/lang/Object;
.source "VcnContext.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIsInTestMode:Z

.field public final mLooper:Landroid/os/Looper;

.field public final mVcnNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/vcn/VcnNetworkProvider;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing context"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/vcn/VcnContext;->mContext:Landroid/content/Context;

    const-string p1, "Missing looper"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/os/Looper;

    iput-object p2, p0, Lcom/android/server/vcn/VcnContext;->mLooper:Landroid/os/Looper;

    const-string p1, "Missing networkProvider"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Lcom/android/server/vcn/VcnNetworkProvider;

    iput-object p3, p0, Lcom/android/server/vcn/VcnContext;->mVcnNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    iput-boolean p4, p0, Lcom/android/server/vcn/VcnContext;->mIsInTestMode:Z

    return-void
.end method


# virtual methods
.method public ensureRunningOnLooperThread()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnContext;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not running on VcnMgmtSvc thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/vcn/VcnContext;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/android/server/vcn/VcnContext;->mLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public getVcnNetworkProvider()Lcom/android/server/vcn/VcnNetworkProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/server/vcn/VcnContext;->mVcnNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    return-object p0
.end method

.method public isInTestMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/vcn/VcnContext;->mIsInTestMode:Z

    return p0
.end method
