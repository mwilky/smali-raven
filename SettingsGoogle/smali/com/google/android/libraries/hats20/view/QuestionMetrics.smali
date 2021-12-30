.class public Lcom/google/android/libraries/hats20/view/QuestionMetrics;
.super Ljava/lang/Object;
.source "QuestionMetrics.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/libraries/hats20/view/QuestionMetrics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private delayEndMs:J

.field private delayStartMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/hats20/view/QuestionMetrics$1;

    invoke-direct {v0}, Lcom/google/android/libraries/hats20/view/QuestionMetrics$1;-><init>()V

    sput-object v0, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->delayStartMs:J

    iput-wide v0, p0, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->delayEndMs:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->delayStartMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->delayEndMs:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/libraries/hats20/view/QuestionMetrics$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method getDelayMs()J
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->isAnswered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->delayEndMs:J

    iget-wide v2, p0, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->delayStartMs:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method isAnswered()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->delayEndMs:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isShown()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->delayStartMs:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method markAsAnswered()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->isShown()Z

    move-result v0

    const-string v1, "HatsLibQuestionMetrics"

    if-nez v0, :cond_0

    const-string p0, "Question was marked as answered but was never marked as shown."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->isAnswered()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Question was already marked as answered."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->delayEndMs:J

    return-void
.end method

.method markAsShown()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->delayStartMs:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->delayStartMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->delayEndMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
