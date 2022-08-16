.class public Landroid/hardware/graphics/common/PlaneLayout;
.super Ljava/lang/Object;
.source "PlaneLayout.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/graphics/common/PlaneLayout;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public components:[Landroid/hardware/graphics/common/PlaneLayoutComponent;

.field public heightInSamples:J

.field public horizontalSubsampling:J

.field public offsetInBytes:J

.field public sampleIncrementInBits:J

.field public strideInBytes:J

.field public totalSizeInBytes:J

.field public verticalSubsampling:J

.field public widthInSamples:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/graphics/common/PlaneLayout$1;

    invoke-direct {v0}, Landroid/hardware/graphics/common/PlaneLayout$1;-><init>()V

    sput-object v0, Landroid/hardware/graphics/common/PlaneLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayout;->offsetInBytes:J

    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayout;->sampleIncrementInBits:J

    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayout;->strideInBytes:J

    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayout;->widthInSamples:J

    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayout;->heightInSamples:J

    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayout;->totalSizeInBytes:J

    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayout;->horizontalSubsampling:J

    iput-wide v0, p0, Landroid/hardware/graphics/common/PlaneLayout;->verticalSubsampling:J

    return-void
.end method

.method public static describeContents(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    check-cast p0, [Ljava/lang/Object;

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p0, v0

    invoke-static {v3}, Landroid/hardware/graphics/common/PlaneLayout;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    instance-of v1, p0, Landroid/os/Parcelable;

    if-eqz v1, :cond_3

    check-cast p0, Landroid/os/Parcelable;

    invoke-interface {p0}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0

    :cond_3
    return v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    iget-object p0, p0, Landroid/hardware/graphics/common/PlaneLayout;->components:[Landroid/hardware/graphics/common/PlaneLayoutComponent;

    invoke-static {p0}, Landroid/hardware/graphics/common/PlaneLayout;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/lit8 p0, p0, 0x0

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

    iget-object v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->components:[Landroid/hardware/graphics/common/PlaneLayoutComponent;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->offsetInBytes:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->sampleIncrementInBits:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->strideInBytes:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->widthInSamples:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->heightInSamples:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->totalSizeInBytes:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->horizontalSubsampling:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v1, p0, Landroid/hardware/graphics/common/PlaneLayout;->verticalSubsampling:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
