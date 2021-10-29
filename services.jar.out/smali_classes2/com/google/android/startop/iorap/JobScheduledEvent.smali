.class public Lcom/google/android/startop/iorap/JobScheduledEvent;
.super Ljava/lang/Object;
.source "JobScheduledEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/startop/iorap/JobScheduledEvent$Sort;,
        Lcom/google/android/startop/iorap/JobScheduledEvent$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/startop/iorap/JobScheduledEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final SORT_IDLE_MAINTENANCE:I = 0x0

.field private static final SORT_MAX:I = 0x0

.field private static final TYPE_MAX:I = 0x1

.field public static final TYPE_START_JOB:I = 0x0

.field public static final TYPE_STOP_JOB:I = 0x1


# instance fields
.field public final jobId:I

.field public final packageName:Ljava/lang/String;

.field public final shouldUpdateVersions:Z

.field public final sort:I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/startop/iorap/JobScheduledEvent$1;

    invoke-direct {v0}, Lcom/google/android/startop/iorap/JobScheduledEvent$1;-><init>()V

    sput-object v0, Lcom/google/android/startop/iorap/JobScheduledEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->type:I

    iput p2, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->jobId:I

    iput p3, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->sort:I

    iput-object p4, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->packageName:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->shouldUpdateVersions:Z

    invoke-direct {p0}, Lcom/google/android/startop/iorap/JobScheduledEvent;->checkConstructorArguments()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->jobId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->sort:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->shouldUpdateVersions:Z

    invoke-direct {p0}, Lcom/google/android/startop/iorap/JobScheduledEvent;->checkConstructorArguments()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/startop/iorap/JobScheduledEvent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/JobScheduledEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private checkConstructorArguments()V
    .locals 2

    iget v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->type:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/startop/iorap/CheckHelpers;->checkTypeInRange(II)V

    iget v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->sort:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/startop/iorap/CheckHelpers;->checkTypeInRange(II)V

    return-void
.end method

.method public static createIdleMaintenance(ILandroid/app/job/JobParameters;Ljava/lang/String;Z)Lcom/google/android/startop/iorap/JobScheduledEvent;
    .locals 7

    new-instance v6, Lcom/google/android/startop/iorap/JobScheduledEvent;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    const/4 v3, 0x0

    move-object v0, v6

    move v1, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/startop/iorap/JobScheduledEvent;-><init>(IIILjava/lang/String;Z)V

    return-object v6
.end method

.method private equals(Lcom/google/android/startop/iorap/JobScheduledEvent;)Z
    .locals 2

    iget v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->type:I

    iget v1, p1, Lcom/google/android/startop/iorap/JobScheduledEvent;->type:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->jobId:I

    iget v1, p1, Lcom/google/android/startop/iorap/JobScheduledEvent;->jobId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->sort:I

    iget v1, p1, Lcom/google/android/startop/iorap/JobScheduledEvent;->sort:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/startop/iorap/JobScheduledEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->shouldUpdateVersions:Z

    iget-boolean v1, p1, Lcom/google/android/startop/iorap/JobScheduledEvent;->shouldUpdateVersions:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/startop/iorap/JobScheduledEvent;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/startop/iorap/JobScheduledEvent;

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/JobScheduledEvent;->equals(Lcom/google/android/startop/iorap/JobScheduledEvent;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->jobId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->sort:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->packageName:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->shouldUpdateVersions:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "{type: %d, jobId: %d, sort: %d, packageName: %s, shouldUpdateVersions %b}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->jobId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->sort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->shouldUpdateVersions:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
