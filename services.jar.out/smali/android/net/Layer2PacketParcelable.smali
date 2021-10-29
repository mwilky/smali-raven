.class public Landroid/net/Layer2PacketParcelable;
.super Ljava/lang/Object;
.source "Layer2PacketParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/Layer2PacketParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dstMacAddress:Landroid/net/MacAddress;

.field public payload:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/Layer2PacketParcelable$1;

    invoke-direct {v0}, Landroid/net/Layer2PacketParcelable$1;-><init>()V

    sput-object v0, Landroid/net/Layer2PacketParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    :cond_1
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/net/Layer2PacketParcelable;->dstMacAddress:Landroid/net/MacAddress;

    invoke-direct {p0, v1}, Landroid/net/Layer2PacketParcelable;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

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

    if-eqz v4, :cond_4

    sget-object v4, Landroid/net/MacAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/MacAddress;

    iput-object v4, p0, Landroid/net/Layer2PacketParcelable;->dstMacAddress:Landroid/net/MacAddress;

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/net/Layer2PacketParcelable;->dstMacAddress:Landroid/net/MacAddress;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_6

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_5

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_5
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    iput-object v4, p0, Landroid/net/Layer2PacketParcelable;->payload:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_7

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    nop

    return-void

    :cond_7
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v4

    sub-int/2addr v3, v1

    if-le v0, v3, :cond_8

    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    throw v4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string/jumbo v2, "{"

    const-string/jumbo v3, "}"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dstMacAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/Layer2PacketParcelable;->dstMacAddress:Landroid/net/MacAddress;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "payload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/Layer2PacketParcelable;->payload:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.net.Layer2PacketParcelable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/net/Layer2PacketParcelable;->dstMacAddress:Landroid/net/MacAddress;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/net/Layer2PacketParcelable;->dstMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v2, p1, v1}, Landroid/net/MacAddress;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v1, p0, Landroid/net/Layer2PacketParcelable;->payload:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
