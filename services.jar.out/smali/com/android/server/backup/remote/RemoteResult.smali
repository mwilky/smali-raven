.class public Lcom/android/server/backup/remote/RemoteResult;
.super Ljava/lang/Object;
.source "RemoteResult.java"


# static fields
.field public static final FAILED_CANCELLED:Lcom/android/server/backup/remote/RemoteResult;

.field public static final FAILED_THREAD_INTERRUPTED:Lcom/android/server/backup/remote/RemoteResult;

.field public static final FAILED_TIMED_OUT:Lcom/android/server/backup/remote/RemoteResult;


# instance fields
.field public final mType:I

.field public final mValue:J


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/server/backup/remote/RemoteResult;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/backup/remote/RemoteResult;-><init>(IJ)V

    sput-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_TIMED_OUT:Lcom/android/server/backup/remote/RemoteResult;

    new-instance v0, Lcom/android/server/backup/remote/RemoteResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/backup/remote/RemoteResult;-><init>(IJ)V

    sput-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_CANCELLED:Lcom/android/server/backup/remote/RemoteResult;

    new-instance v0, Lcom/android/server/backup/remote/RemoteResult;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/backup/remote/RemoteResult;-><init>(IJ)V

    sput-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_THREAD_INTERRUPTED:Lcom/android/server/backup/remote/RemoteResult;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/backup/remote/RemoteResult;->mType:I

    iput-wide p2, p0, Lcom/android/server/backup/remote/RemoteResult;->mValue:J

    return-void
.end method

.method public static of(J)Lcom/android/server/backup/remote/RemoteResult;
    .locals 2

    new-instance v0, Lcom/android/server/backup/remote/RemoteResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/backup/remote/RemoteResult;-><init>(IJ)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/server/backup/remote/RemoteResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/server/backup/remote/RemoteResult;

    iget v1, p0, Lcom/android/server/backup/remote/RemoteResult;->mType:I

    iget v3, p1, Lcom/android/server/backup/remote/RemoteResult;->mType:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lcom/android/server/backup/remote/RemoteResult;->mValue:J

    iget-wide p0, p1, Lcom/android/server/backup/remote/RemoteResult;->mValue:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public get()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/backup/remote/RemoteResult;->isPresent()Z

    move-result v0

    const-string v1, "Can\'t obtain value of failed result"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/backup/remote/RemoteResult;->mValue:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/backup/remote/RemoteResult;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/server/backup/remote/RemoteResult;->mValue:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isPresent()Z
    .locals 0

    iget p0, p0, Lcom/android/server/backup/remote/RemoteResult;->mType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteResult{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/backup/remote/RemoteResult;->toStringDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toStringDescription()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/backup/remote/RemoteResult;->mType:I

    if-eqz v0, :cond_3

    const/4 p0, 0x1

    if-eq v0, p0, :cond_2

    const/4 p0, 0x2

    if-eq v0, p0, :cond_1

    const/4 p0, 0x3

    if-ne v0, p0, :cond_0

    const-string p0, "FAILED_THREAD_INTERRUPTED"

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Unknown type"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    const-string p0, "FAILED_CANCELLED"

    return-object p0

    :cond_2
    const-string p0, "FAILED_TIMED_OUT"

    return-object p0

    :cond_3
    iget-wide v0, p0, Lcom/android/server/backup/remote/RemoteResult;->mValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
