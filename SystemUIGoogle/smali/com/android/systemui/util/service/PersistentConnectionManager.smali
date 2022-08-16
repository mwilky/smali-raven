.class public final Lcom/android/systemui/util/service/PersistentConnectionManager;
.super Ljava/lang/Object;
.source "PersistentConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mBaseReconnectDelayMs:I

.field public final mConnectRunnable:Lcom/android/systemui/util/service/PersistentConnectionManager$1;

.field public final mConnection:Lcom/android/systemui/util/service/ObservableServiceConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/service/ObservableServiceConnection<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final mConnectionCallback:Lcom/android/systemui/util/service/PersistentConnectionManager$2;

.field public mCurrentReconnectCancelable:Ljava/lang/Runnable;

.field public final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mMaxReconnectAttempts:I

.field public final mMinConnectionDuration:I

.field public final mObserver:Lcom/android/systemui/util/service/Observer;

.field public final mObserverCallback:Lcom/android/systemui/util/service/PersistentConnectionManager$$ExternalSyntheticLambda0;

.field public mReconnectAttempts:I

.field public final mSystemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "PersistentConnManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/util/service/PersistentConnectionManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/service/ObservableServiceConnection;IIILcom/android/systemui/util/service/PackageObserver;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mReconnectAttempts:I

    new-instance v0, Lcom/android/systemui/util/service/PersistentConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/service/PersistentConnectionManager$1;-><init>(Lcom/android/systemui/util/service/PersistentConnectionManager;)V

    iput-object v0, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mConnectRunnable:Lcom/android/systemui/util/service/PersistentConnectionManager$1;

    new-instance v0, Lcom/android/systemui/util/service/PersistentConnectionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/service/PersistentConnectionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/service/PersistentConnectionManager;)V

    iput-object v0, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mObserverCallback:Lcom/android/systemui/util/service/PersistentConnectionManager$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/systemui/util/service/PersistentConnectionManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/service/PersistentConnectionManager$2;-><init>(Lcom/android/systemui/util/service/PersistentConnectionManager;)V

    iput-object v0, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mConnectionCallback:Lcom/android/systemui/util/service/PersistentConnectionManager$2;

    iput-object p1, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p2, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p3, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mConnection:Lcom/android/systemui/util/service/ObservableServiceConnection;

    iput-object p7, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mObserver:Lcom/android/systemui/util/service/Observer;

    iput p4, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mMaxReconnectAttempts:I

    iput p5, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mBaseReconnectDelayMs:I

    iput p6, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mMinConnectionDuration:I

    return-void
.end method


# virtual methods
.method public final stop()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mConnection:Lcom/android/systemui/util/service/ObservableServiceConnection;

    iget-object v1, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mConnectionCallback:Lcom/android/systemui/util/service/PersistentConnectionManager$2;

    sget-boolean v2, Lcom/android/systemui/util/service/ObservableServiceConnection;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeCallback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ObservableSvcConn"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/util/service/ObservableServiceConnection;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/keyguard/KeyguardPINView$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v0, v1}, Lcom/android/keyguard/KeyguardPINView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mObserver:Lcom/android/systemui/util/service/Observer;

    iget-object v1, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mObserverCallback:Lcom/android/systemui/util/service/PersistentConnectionManager$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1}, Lcom/android/systemui/util/service/Observer;->removeCallback(Lcom/android/systemui/util/service/PersistentConnectionManager$$ExternalSyntheticLambda0;)V

    iget-object p0, p0, Lcom/android/systemui/util/service/PersistentConnectionManager;->mConnection:Lcom/android/systemui/util/service/ObservableServiceConnection;

    invoke-virtual {p0}, Lcom/android/systemui/util/service/ObservableServiceConnection;->unbind()V

    return-void
.end method
