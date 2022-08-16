.class public Landroid/hardware/graphics/common/HardwareBuffer;
.super Ljava/lang/Object;
.source "HardwareBuffer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/graphics/common/HardwareBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public description:Landroid/hardware/graphics/common/HardwareBufferDescription;

.field public handle:Landroid/hardware/common/NativeHandle;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/graphics/common/HardwareBuffer$1;

    invoke-direct {v0}, Landroid/hardware/graphics/common/HardwareBuffer$1;-><init>()V

    sput-object v0, Landroid/hardware/graphics/common/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/graphics/common/HardwareBuffer;->description:Landroid/hardware/graphics/common/HardwareBufferDescription;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    :goto_0
    or-int/2addr v0, v1

    iget-object p0, p0, Landroid/hardware/graphics/common/HardwareBuffer;->handle:Landroid/hardware/common/NativeHandle;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Landroid/os/Parcelable;->describeContents()I

    move-result v1

    :goto_1
    or-int p0, v1, v0

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

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/graphics/common/HardwareBuffer;->description:Landroid/hardware/graphics/common/HardwareBufferDescription;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/hardware/graphics/common/HardwareBuffer;->handle:Landroid/hardware/common/NativeHandle;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
