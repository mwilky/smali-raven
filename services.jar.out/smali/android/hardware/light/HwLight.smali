.class public Landroid/hardware/light/HwLight;
.super Ljava/lang/Object;
.source "HwLight.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/light/HwLight;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:I

.field public ordinal:I

.field public type:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/light/HwLight$1;

    invoke-direct {v0}, Landroid/hardware/light/HwLight$1;-><init>()V

    sput-object v0, Landroid/hardware/light/HwLight;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/light/HwLight;->id:I

    iput v0, p0, Landroid/hardware/light/HwLight;->ordinal:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getStability()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const-string v2, "Overflow in the size of parcelable"

    const v3, 0x7fffffff

    if-gez v1, :cond_1

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_0

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_0
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_3

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_2

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_2
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/hardware/light/HwLight;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_5

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_4

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_4
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/hardware/light/HwLight;->ordinal:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_7

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_6

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_6
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    iput-byte v4, p0, Landroid/hardware/light/HwLight;->type:B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_8

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    nop

    return-void

    :cond_8
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v4

    sub-int/2addr v3, v1

    if-le v0, v3, :cond_9

    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    throw v4
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/light/HwLight;->id:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/light/HwLight;->ordinal:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte v1, p0, Landroid/hardware/light/HwLight;->type:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
