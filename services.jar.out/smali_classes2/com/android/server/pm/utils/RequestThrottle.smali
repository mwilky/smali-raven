.class public Lcom/android/server/pm/utils/RequestThrottle;
.super Ljava/lang/Object;
.source "RequestThrottle.java"


# instance fields
.field public final mBackoffBase:I

.field public final mBlock:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mCurrentRetry:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mFirstDelay:I

.field public final mHandler:Landroid/os/Handler;

.field public final mLastCommitted:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mLastRequest:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mMaxAttempts:I

.field public final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$LIuT-CkJjHb_DkU1ftZFUUuq5gY(Lcom/android/server/pm/utils/RequestThrottle;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/utils/RequestThrottle;->runInternal()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/os/Handler;IIILjava/util/function/Supplier;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "III",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mLastRequest:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mLastCommitted:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mCurrentRetry:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/server/pm/utils/RequestThrottle;->mBlock:Ljava/util/function/Supplier;

    iput p2, p0, Lcom/android/server/pm/utils/RequestThrottle;->mMaxAttempts:I

    iput p3, p0, Lcom/android/server/pm/utils/RequestThrottle;->mFirstDelay:I

    iput p4, p0, Lcom/android/server/pm/utils/RequestThrottle;->mBackoffBase:I

    new-instance p1, Lcom/android/server/pm/utils/RequestThrottle$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/pm/utils/RequestThrottle$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/utils/RequestThrottle;)V

    iput-object p1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/util/function/Supplier;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x5

    const/16 v3, 0x3e8

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/utils/RequestThrottle;-><init>(Landroid/os/Handler;IIILjava/util/function/Supplier;)V

    return-void
.end method


# virtual methods
.method public final runInternal()Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mLastRequest:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mLastCommitted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mBlock:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mCurrentRetry:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mLastCommitted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mCurrentRetry:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iget v1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mMaxAttempts:I

    if-ge v0, v1, :cond_2

    iget v1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mFirstDelay:I

    int-to-double v1, v1

    iget v4, p0, Lcom/android/server/pm/utils/RequestThrottle;->mBackoffBase:I

    int-to-double v4, v4

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v1, v4

    double-to-long v0, v1

    iget-object v2, p0, Lcom/android/server/pm/utils/RequestThrottle;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mCurrentRetry:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :goto_0
    return v3
.end method

.method public runNow()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mLastRequest:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {p0}, Lcom/android/server/pm/utils/RequestThrottle;->runInternal()Z

    move-result p0

    return p0
.end method

.method public schedule()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mLastRequest:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
