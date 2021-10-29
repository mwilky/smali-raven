.class public Lcom/android/server/biometrics/sensors/face/UsageStats;
.super Ljava/lang/Object;
.source "UsageStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;
    }
.end annotation


# static fields
.field private static final EVENT_LOG_SIZE:I = 0x64


# instance fields
.field private mAcceptCount:I

.field private mAcceptLatency:J

.field private mAuthenticationEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mErrorCount:Landroid/util/SparseIntArray;

.field private mErrorLatency:Landroid/util/SparseLongArray;

.field private mRejectCount:I

.field private mRejectLatency:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthenticationEvents:Ljava/util/ArrayDeque;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorCount:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorLatency:Landroid/util/SparseLongArray;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addEvent(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthenticationEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthenticationEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthenticationEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->access$000(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptCount:I

    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptLatency:J

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->access$100(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptLatency:J

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->access$200(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectCount:I

    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectLatency:J

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->access$100(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectLatency:J

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorCount:Landroid/util/SparseIntArray;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->access$200(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorCount:Landroid/util/SparseIntArray;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->access$200(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorLatency:Landroid/util/SparseLongArray;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->access$200(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorLatency:Landroid/util/SparseLongArray;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->access$200(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)I

    move-result v3

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v2

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->access$100(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    :goto_0
    return-void
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Events since last reboot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthenticationEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthenticationEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->toString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Accept\tCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\tLatency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptLatency:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\tAverage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptCount:I

    const-wide/16 v4, 0x0

    if-lez v3, :cond_1

    iget-wide v6, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptLatency:J

    int-to-long v8, v3

    div-long/2addr v6, v8

    goto :goto_1

    :cond_1
    move-wide v6, v4

    :goto_1
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reject\tCount: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectLatency:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectCount:I

    if-lez v3, :cond_2

    iget-wide v6, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectLatency:J

    int-to-long v8, v3

    div-long/2addr v6, v8

    goto :goto_2

    :cond_2
    move-wide v6, v4

    :goto_2
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorCount:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorCount:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorCount:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\tCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorLatency:Landroid/util/SparseLongArray;

    invoke-virtual {v8, v3, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v6, :cond_3

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorLatency:Landroid/util/SparseLongArray;

    invoke-virtual {v8, v3, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v8

    int-to-long v10, v6

    div-long/2addr v8, v10

    goto :goto_4

    :cond_3
    move-wide v8, v4

    :goto_4
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v3, v9}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method
