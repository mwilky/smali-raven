.class public Landroid/hardware/graphics/common/Smpte2086;
.super Ljava/lang/Object;
.source "Smpte2086.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/graphics/common/Smpte2086;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public maxLuminance:F

.field public minLuminance:F

.field public primaryBlue:Landroid/hardware/graphics/common/XyColor;

.field public primaryGreen:Landroid/hardware/graphics/common/XyColor;

.field public primaryRed:Landroid/hardware/graphics/common/XyColor;

.field public whitePoint:Landroid/hardware/graphics/common/XyColor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/graphics/common/Smpte2086$1;

    invoke-direct {v0}, Landroid/hardware/graphics/common/Smpte2086$1;-><init>()V

    sput-object v0, Landroid/hardware/graphics/common/Smpte2086;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/graphics/common/Smpte2086;->maxLuminance:F

    iput v0, p0, Landroid/hardware/graphics/common/Smpte2086;->minLuminance:F

    return-void
.end method

.method public static describeContents(Landroid/hardware/graphics/common/XyColor;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final describeContents()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryRed:Landroid/hardware/graphics/common/XyColor;

    invoke-static {v0}, Landroid/hardware/graphics/common/Smpte2086;->describeContents(Landroid/hardware/graphics/common/XyColor;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryGreen:Landroid/hardware/graphics/common/XyColor;

    invoke-static {v1}, Landroid/hardware/graphics/common/Smpte2086;->describeContents(Landroid/hardware/graphics/common/XyColor;)I

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryBlue:Landroid/hardware/graphics/common/XyColor;

    invoke-static {v1}, Landroid/hardware/graphics/common/Smpte2086;->describeContents(Landroid/hardware/graphics/common/XyColor;)I

    move-result v1

    or-int/2addr v0, v1

    iget-object p0, p0, Landroid/hardware/graphics/common/Smpte2086;->whitePoint:Landroid/hardware/graphics/common/XyColor;

    invoke-static {p0}, Landroid/hardware/graphics/common/Smpte2086;->describeContents(Landroid/hardware/graphics/common/XyColor;)I

    move-result p0

    or-int/2addr p0, v0

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

    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryRed:Landroid/hardware/graphics/common/XyColor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryGreen:Landroid/hardware/graphics/common/XyColor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryBlue:Landroid/hardware/graphics/common/XyColor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->whitePoint:Landroid/hardware/graphics/common/XyColor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget p2, p0, Landroid/hardware/graphics/common/Smpte2086;->maxLuminance:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p0, p0, Landroid/hardware/graphics/common/Smpte2086;->minLuminance:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
