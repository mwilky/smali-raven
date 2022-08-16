.class public final Lcom/google/android/systemui/assist/uihints/TimeoutManager;
.super Ljava/lang/Object;
.source "TimeoutManager.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$KeepAliveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/assist/uihints/TimeoutManager$TimeoutCallback;
    }
.end annotation


# static fields
.field public static final SESSION_TIMEOUT_MS:J


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mOnTimeout:Lcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda1;

.field public mTimeoutCallback:Lcom/google/android/systemui/assist/uihints/TimeoutManager$TimeoutCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->SESSION_TIMEOUT_MS:J

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda1;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0, p1}, Lcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->mOnTimeout:Lcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda1;

    return-void
.end method


# virtual methods
.method public final onKeepAlive()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->mOnTimeout:Lcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->mOnTimeout:Lcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda1;

    sget-wide v1, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->SESSION_TIMEOUT_MS:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
