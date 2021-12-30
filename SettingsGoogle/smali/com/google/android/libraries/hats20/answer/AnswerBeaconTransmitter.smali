.class public Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;
.super Ljava/lang/Object;
.source "AnswerBeaconTransmitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter$TransmitTask;
    }
.end annotation


# instance fields
.field private final answerUrl:Ljava/lang/String;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final hatsDataStore:Lcom/google/android/libraries/hats20/storage/HatsDataStore;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/libraries/hats20/storage/HatsDataStore;)V
    .locals 1

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;-><init>(Ljava/lang/String;Lcom/google/android/libraries/hats20/storage/HatsDataStore;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/libraries/hats20/storage/HatsDataStore;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Answer URL was missing"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HaTS cookie store was missing"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Executor was missing"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;->answerUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;->hatsDataStore:Lcom/google/android/libraries/hats20/storage/HatsDataStore;

    iput-object p3, p0, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;->answerUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;)Lcom/google/android/libraries/hats20/storage/HatsDataStore;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;->hatsDataStore:Lcom/google/android/libraries/hats20/storage/HatsDataStore;

    return-object p0
.end method


# virtual methods
.method public transmit(Lcom/google/android/libraries/hats20/answer/AnswerBeacon;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter$TransmitTask;

    invoke-virtual {p1}, Lcom/google/android/libraries/hats20/answer/AnswerBeacon;->exportAllParametersInQueryString()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter$TransmitTask;-><init>(Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
