.class Lcom/google/android/systemui/assist/uihints/TimeoutManager;
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
.field private static final SESSION_TIMEOUT_MS:J


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mOnTimeout:Ljava/lang/Runnable;

.field private mTimeoutCallback:Lcom/google/android/systemui/assist/uihints/TimeoutManager$TimeoutCallback;


# direct methods
.method public static synthetic $r8$lambda$KSjMBoMWybN3DYw34GUJyiX_Og4(Lcom/google/android/systemui/assist/uihints/TimeoutManager;Ldagger/Lazy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->lambda$new$0(Ldagger/Lazy;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->SESSION_TIMEOUT_MS:J

    return-void
.end method

.method constructor <init>(Ldagger/Lazy;)V
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

    new-instance v0, Lcom/google/android/systemui/assist/uihints/TimeoutManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/assist/uihints/TimeoutManager$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/TimeoutManager;Ldagger/Lazy;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->mOnTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$new$0(Ldagger/Lazy;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->mTimeoutCallback:Lcom/google/android/systemui/assist/uihints/TimeoutManager$TimeoutCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/systemui/assist/uihints/TimeoutManager$TimeoutCallback;->onTimeout()V

    goto :goto_0

    :cond_0
    const-string p0, "TimeoutManager"

    const-string v0, "Timeout occurred, but there was no callback provided"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onKeepAlive(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->resetTimeout()V

    return-void
.end method

.method resetTimeout()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->mOnTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->mOnTimeout:Ljava/lang/Runnable;

    sget-wide v1, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->SESSION_TIMEOUT_MS:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method setTimeoutCallback(Lcom/google/android/systemui/assist/uihints/TimeoutManager$TimeoutCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->mTimeoutCallback:Lcom/google/android/systemui/assist/uihints/TimeoutManager$TimeoutCallback;

    return-void
.end method
