.class public final Lcom/android/server/vibrator/Vibration;
.super Ljava/lang/Object;
.source "Vibration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/Vibration$DebugInfo;,
        Lcom/android/server/vibrator/Vibration$Status;
    }
.end annotation


# static fields
.field public static final DEBUG_DATE_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field public final attrs:Landroid/os/VibrationAttributes;

.field public final id:J

.field public final mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

.field public mEffect:Landroid/os/CombinedVibration;

.field public mEndTimeDebug:J

.field public mEndUptimeMillis:J

.field public final mFallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field public mOriginalEffect:Landroid/os/CombinedVibration;

.field public final mStartTimeDebug:J

.field public mStatus:Lcom/android/server/vibrator/Vibration$Status;

.field public final opPkg:Ljava/lang/String;

.field public final reason:Ljava/lang/String;

.field public final startUptimeMillis:J

.field public final token:Landroid/os/IBinder;

.field public final uid:I


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEBUG_DATE_FORMAT()Ljava/text/SimpleDateFormat;
    .locals 1

    sget-object v0, Lcom/android/server/vibrator/Vibration;->DEBUG_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/vibrator/Vibration;->DEBUG_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/Vibration;->mFallbacks:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/vibrator/Vibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcom/android/server/vibrator/Vibration;->token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    int-to-long p1, p2

    iput-wide p1, p0, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/Vibration;->startUptimeMillis:J

    iput-object p4, p0, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    iput p5, p0, Lcom/android/server/vibrator/Vibration;->uid:I

    iput-object p6, p0, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/vibrator/Vibration;->reason:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/Vibration;->mStartTimeDebug:J

    sget-object p1, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    iput-object p1, p0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    return-void
.end method

.method public static transformCombinedEffect(Landroid/os/CombinedVibration;Ljava/util/function/Function;)Landroid/os/CombinedVibration;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CombinedVibration;",
            "Ljava/util/function/Function<",
            "Landroid/os/VibrationEffect;",
            "Landroid/os/VibrationEffect;",
            ">;)",
            "Landroid/os/CombinedVibration;"
        }
    .end annotation

    instance-of v0, p0, Landroid/os/CombinedVibration$Mono;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {p0}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect;

    invoke-static {p0}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/os/CombinedVibration$Stereo;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/os/CombinedVibration$Stereo;

    invoke-virtual {p0}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    invoke-virtual {v0, v2, v3}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Landroid/os/CombinedVibration$Sequential;

    if-eqz v0, :cond_4

    check-cast p0, Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {p0}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object p0

    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CombinedVibration;

    invoke-static {v1, p1}, Lcom/android/server/vibrator/Vibration;->transformCombinedEffect(Landroid/os/CombinedVibration;Ljava/util/function/Function;)Landroid/os/CombinedVibration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$SequentialCombination;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object p0

    :cond_4
    return-object p0
.end method


# virtual methods
.method public addFallback(ILandroid/os/VibrationEffect;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public end(Lcom/android/server/vibrator/Vibration$Status;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/vibrator/Vibration;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/Vibration;->mEndUptimeMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/Vibration;->mEndTimeDebug:J

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/Vibration;->hasEnded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/android/server/vibrator/Vibration;->mEndUptimeMillis:J

    iget-wide v3, v0, Lcom/android/server/vibrator/Vibration;->startUptimeMillis:J

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    move-wide v8, v1

    new-instance v1, Lcom/android/server/vibrator/Vibration$DebugInfo;

    iget-wide v4, v0, Lcom/android/server/vibrator/Vibration;->mStartTimeDebug:J

    iget-wide v6, v0, Lcom/android/server/vibrator/Vibration;->mEndTimeDebug:J

    iget-object v10, v0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    iget-object v11, v0, Lcom/android/server/vibrator/Vibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    iget v14, v0, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v15, v0, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/vibrator/Vibration;->reason:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    move-object v3, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v0

    invoke-direct/range {v3 .. v17}, Lcom/android/server/vibrator/Vibration$DebugInfo;-><init>(JJJLandroid/os/CombinedVibration;Landroid/os/CombinedVibration;FLandroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/vibrator/Vibration$Status;)V

    return-object v1
.end method

.method public getEffect()Landroid/os/CombinedVibration;
    .locals 0

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    return-object p0
.end method

.method public getFallback(I)Landroid/os/VibrationEffect;
    .locals 0

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect;

    return-object p0
.end method

.method public hasEnded()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRepeating()Z
    .locals 4

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    invoke-virtual {p0}, Landroid/os/CombinedVibration;->getDuration()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateEffects(Ljava/util/function/Function;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/os/VibrationEffect;",
            "Landroid/os/VibrationEffect;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    invoke-static {v0, p1}, Lcom/android/server/vibrator/Vibration;->transformCombinedEffect(Landroid/os/CombinedVibration;Ljava/util/function/Function;)Landroid/os/CombinedVibration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    iput-object v1, p0, Lcom/android/server/vibrator/Vibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    :cond_0
    iput-object v0, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/vibrator/Vibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/VibrationEffect;

    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/VibrationEffect;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public waitForEnd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method
