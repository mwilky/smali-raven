.class public Landroid/hardware/graphics/common/PlaneLayoutComponent;
.super Ljava/lang/Object;
.source "PlaneLayoutComponent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/graphics/common/PlaneLayoutComponent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public offsetInBits:J

.field public sizeInBits:J

.field public type:Landroid/hardware/graphics/common/ExtendableType;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/graphics/common/PlaneLayoutComponent$1;

    invoke-direct {v0}, Landroid/hardware/graphics/common/PlaneLayoutComponent$1;-><init>()V

    sput-object v0, Landroid/hardware/graphics/common/PlaneLayoutComponent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayoutComponent;->offsetInBits:J

    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayoutComponent;->sizeInBits:J

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    iget-object p0, p0, Landroid/hardware/graphics/common/PlaneLayoutComponent;->type:Landroid/hardware/graphics/common/ExtendableType;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :goto_0
    or-int/2addr p0, v0

    return p0
.end method

.method public final getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/graphics/common/PlaneLayoutComponent;->type:Landroid/hardware/graphics/common/ExtendableType;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayoutComponent;->offsetInBits:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayoutComponent;->sizeInBits:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
