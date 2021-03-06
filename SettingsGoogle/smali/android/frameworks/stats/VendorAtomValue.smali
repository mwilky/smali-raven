.class public final Landroid/frameworks/stats/VendorAtomValue;
.super Ljava/lang/Object;
.source "VendorAtomValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/frameworks/stats/VendorAtomValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/frameworks/stats/VendorAtomValue$1;

    invoke-direct {v0}, Landroid/frameworks/stats/VendorAtomValue$1;-><init>()V

    sput-object v0, Landroid/frameworks/stats/VendorAtomValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/frameworks/stats/VendorAtomValue;->_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/frameworks/stats/VendorAtomValue;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/frameworks/stats/VendorAtomValue;->_tag:I

    iput-object p2, p0, Landroid/frameworks/stats/VendorAtomValue;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/frameworks/stats/VendorAtomValue;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/frameworks/stats/VendorAtomValue$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/frameworks/stats/VendorAtomValue;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/frameworks/stats/VendorAtomValue;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/frameworks/stats/VendorAtomValue;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/frameworks/stats/VendorAtomValue;->getTag()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/frameworks/stats/VendorAtomValue;->_tagString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is available."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _set(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroid/frameworks/stats/VendorAtomValue;->_tag:I

    iput-object p2, p0, Landroid/frameworks/stats/VendorAtomValue;->_value:Ljava/lang/Object;

    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    const-string p0, "stringValue"

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "floatValue"

    return-object p0

    :cond_2
    const-string p0, "longValue"

    return-object p0

    :cond_3
    const-string p0, "intValue"

    return-object p0
.end method

.method public static intValue(I)Landroid/frameworks/stats/VendorAtomValue;
    .locals 2

    new-instance v0, Landroid/frameworks/stats/VendorAtomValue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/frameworks/stats/VendorAtomValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static longValue(J)Landroid/frameworks/stats/VendorAtomValue;
    .locals 1

    new-instance v0, Landroid/frameworks/stats/VendorAtomValue;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    invoke-direct {v0, p1, p0}, Landroid/frameworks/stats/VendorAtomValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    invoke-virtual {p0}, Landroid/frameworks/stats/VendorAtomValue;->getTag()I

    const/4 p0, 0x0

    return p0
.end method

.method public getFloatValue()F
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/frameworks/stats/VendorAtomValue;->_assertTag(I)V

    iget-object p0, p0, Landroid/frameworks/stats/VendorAtomValue;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getIntValue()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/frameworks/stats/VendorAtomValue;->_assertTag(I)V

    iget-object p0, p0, Landroid/frameworks/stats/VendorAtomValue;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getLongValue()J
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/frameworks/stats/VendorAtomValue;->_assertTag(I)V

    iget-object p0, p0, Landroid/frameworks/stats/VendorAtomValue;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/frameworks/stats/VendorAtomValue;->_assertTag(I)V

    iget-object p0, p0, Landroid/frameworks/stats/VendorAtomValue;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTag()I
    .locals 0

    iget p0, p0, Landroid/frameworks/stats/VendorAtomValue;->_tag:I

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/frameworks/stats/VendorAtomValue;->_set(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "union: unknown tag: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/frameworks/stats/VendorAtomValue;->_set(ILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/frameworks/stats/VendorAtomValue;->_set(ILjava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/frameworks/stats/VendorAtomValue;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Landroid/frameworks/stats/VendorAtomValue;->_tag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/frameworks/stats/VendorAtomValue;->_tag:I

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/frameworks/stats/VendorAtomValue;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/frameworks/stats/VendorAtomValue;->getFloatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/frameworks/stats/VendorAtomValue;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/frameworks/stats/VendorAtomValue;->getIntValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
