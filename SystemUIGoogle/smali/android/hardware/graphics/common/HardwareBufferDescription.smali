.class public Landroid/hardware/graphics/common/HardwareBufferDescription;
.super Ljava/lang/Object;
.source "HardwareBufferDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/graphics/common/HardwareBufferDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public format:I

.field public height:I

.field public layers:I

.field public stride:I

.field public usage:J

.field public width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/graphics/common/HardwareBufferDescription$1;

    invoke-direct {v0}, Landroid/hardware/graphics/common/HardwareBufferDescription$1;-><init>()V

    sput-object v0, Landroid/hardware/graphics/common/HardwareBufferDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/graphics/common/HardwareBufferDescription;->width:I

    iput v0, p0, Landroid/hardware/graphics/common/HardwareBufferDescription;->height:I

    iput v0, p0, Landroid/hardware/graphics/common/HardwareBufferDescription;->layers:I

    iput v0, p0, Landroid/hardware/graphics/common/HardwareBufferDescription;->format:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/graphics/common/HardwareBufferDescription;->usage:J

    iput v0, p0, Landroid/hardware/graphics/common/HardwareBufferDescription;->stride:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/graphics/common/HardwareBufferDescription;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/graphics/common/HardwareBufferDescription;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/graphics/common/HardwareBufferDescription;->layers:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/graphics/common/HardwareBufferDescription;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/hardware/graphics/common/HardwareBufferDescription;->usage:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p0, p0, Landroid/hardware/graphics/common/HardwareBufferDescription;->stride:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
