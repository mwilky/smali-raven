.class public Landroid/net/netd/aidl/NativeUidRangeConfig;
.super Ljava/lang/Object;
.source "NativeUidRangeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/netd/aidl/NativeUidRangeConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final netId:I

.field public final subPriority:I

.field public final uidRanges:[Landroid/net/UidRangeParcel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/netd/aidl/NativeUidRangeConfig$1;

    invoke-direct {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$1;-><init>()V

    sput-object v0, Landroid/net/netd/aidl/NativeUidRangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[Landroid/net/UidRangeParcel;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->netId:I

    iput-object p2, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    iput p3, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->subPriority:I

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Landroid/net/netd/aidl/NativeUidRangeConfig;
    .locals 1

    invoke-static {p0}, Landroid/net/netd/aidl/NativeUidRangeConfig;->internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/netd/aidl/NativeUidRangeConfig;

    move-result-object v0

    return-object v0
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    move-object v3, p1

    check-cast v3, [Ljava/lang/Object;

    array-length v4, v3

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    invoke-direct {p0, v5}, Landroid/net/netd/aidl/NativeUidRangeConfig;->describeContents(Ljava/lang/Object;)I

    move-result v6

    or-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    instance-of v2, p1, Landroid/os/Parcelable;

    if-eqz v2, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    :cond_3
    return v0
.end method

.method private static internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/netd/aidl/NativeUidRangeConfig;
    .locals 8

    new-instance v0, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;

    invoke-direct {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-gez v2, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v4, v2

    if-gt v1, v4, :cond_0

    add-int v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;

    move-result-object v3

    return-object v3

    :cond_0
    new-instance v4, Landroid/os/BadParcelableException;

    invoke-direct {v4, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    sub-int/2addr v5, v1

    if-lt v5, v2, :cond_3

    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v4, v2

    if-gt v1, v4, :cond_2

    add-int v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;

    move-result-object v3

    return-object v3

    :cond_2
    new-instance v4, Landroid/os/BadParcelableException;

    invoke-direct {v4, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->setNetId(I)Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    sub-int/2addr v6, v1

    if-lt v6, v2, :cond_5

    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v4, v2

    if-gt v1, v4, :cond_4

    add-int v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;

    move-result-object v3

    return-object v3

    :cond_4
    new-instance v4, Landroid/os/BadParcelableException;

    invoke-direct {v4, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    :try_start_3
    sget-object v6, Landroid/net/UidRangeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/UidRangeParcel;

    invoke-virtual {v0, v6}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->setUidRanges([Landroid/net/UidRangeParcel;)Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    sub-int/2addr v7, v1

    if-lt v7, v2, :cond_7

    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v4, v2

    if-gt v1, v4, :cond_6

    add-int v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;

    move-result-object v3

    return-object v3

    :cond_6
    new-instance v4, Landroid/os/BadParcelableException;

    invoke-direct {v4, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    :try_start_4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->setSubPriority(I)Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    sub-int/2addr v4, v2

    if-gt v1, v4, :cond_8

    add-int v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;

    move-result-object v3

    return-object v3

    :cond_8
    new-instance v4, Landroid/os/BadParcelableException;

    invoke-direct {v4, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_0
    move-exception v5

    sub-int/2addr v4, v2

    if-gt v1, v4, :cond_9

    add-int v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v0}, Landroid/net/netd/aidl/NativeUidRangeConfig$Builder;->build()Landroid/net/netd/aidl/NativeUidRangeConfig;

    move-result-object v3

    return-object v3

    :cond_9
    new-instance v4, Landroid/os/BadParcelableException;

    invoke-direct {v4, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    invoke-direct {p0, v1}, Landroid/net/netd/aidl/NativeUidRangeConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/net/netd/aidl/NativeUidRangeConfig;

    if-nez v2, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/net/netd/aidl/NativeUidRangeConfig;

    iget v3, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->netId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/net/netd/aidl/NativeUidRangeConfig;->netId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    iget-object v4, v2, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    iget v3, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->subPriority:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/net/netd/aidl/NativeUidRangeConfig;->subPriority:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/Serializable;

    iget v1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->subPriority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
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

    const-string/jumbo v2, "netId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->netId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uidRanges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subPriority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->subPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.net.netd.aidl.NativeUidRangeConfig"

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

    iget v2, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->netId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->uidRanges:[Landroid/net/UidRangeParcel;

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget v1, p0, Landroid/net/netd/aidl/NativeUidRangeConfig;->subPriority:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
