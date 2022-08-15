.class public final Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;
.super Ljava/lang/Object;
.source "EconomyManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/EconomyManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnticipatedAction"
.end annotation


# instance fields
.field public final actionId:I

.field public final mHashCode:I

.field public final numInstantaneousCalls:I

.field public final ongoingDurationMs:J


# direct methods
.method public constructor <init>(IIJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    iput p2, p0, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->numInstantaneousCalls:I

    iput-wide p3, p0, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->ongoingDurationMs:J

    const/4 v0, 0x0

    add-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p2

    mul-int/lit8 v0, v0, 0x1f

    const/16 p1, 0x20

    ushr-long p1, p3, p1

    xor-long/2addr p1, p3

    long-to-int p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->mHashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    iget v2, p0, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    iget v3, p1, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->numInstantaneousCalls:I

    iget v3, p1, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->numInstantaneousCalls:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->ongoingDurationMs:J

    iget-wide p0, p1, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->ongoingDurationMs:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->mHashCode:I

    return p0
.end method
