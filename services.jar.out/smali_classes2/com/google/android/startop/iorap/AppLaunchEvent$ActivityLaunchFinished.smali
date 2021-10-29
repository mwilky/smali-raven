.class public final Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchFinished;
.super Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;
.source "AppLaunchEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/AppLaunchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityLaunchFinished"
.end annotation


# instance fields
.field public final timestampNs:J


# direct methods
.method public constructor <init>(J[BJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;-><init>(J[B)V

    iput-wide p4, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchFinished;->timestampNs:J

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchFinished;->timestampNs:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchFinished;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchFinished;->timestampNs:J

    move-object v0, p1

    check-cast v0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchFinished;

    iget-wide v4, v0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchFinished;->timestampNs:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method protected toStringBody()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;->toStringBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timestampNs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchFinished;->timestampNs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeToParcelImpl(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/google/android/startop/iorap/AppLaunchEvent$BaseWithActivityRecordData;->writeToParcelImpl(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Lcom/google/android/startop/iorap/AppLaunchEvent$ActivityLaunchFinished;->timestampNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
