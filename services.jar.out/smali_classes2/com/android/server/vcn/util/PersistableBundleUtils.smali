.class public Lcom/android/server/vcn/util/PersistableBundleUtils;
.super Ljava/lang/Object;
.source "PersistableBundleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;,
        Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;,
        Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;
    }
.end annotation


# static fields
.field private static final BYTE_ARRAY_KEY:Ljava/lang/String; = "BYTE_ARRAY_KEY"

.field private static final COLLECTION_SIZE_KEY:Ljava/lang/String; = "COLLECTION_LENGTH"

.field public static final INTEGER_DESERIALIZER:Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTEGER_KEY:Ljava/lang/String; = "INTEGER_KEY"

.field public static final INTEGER_SERIALIZER:Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIST_KEY_FORMAT:Ljava/lang/String; = "LIST_ITEM_%d"

.field private static final MAP_KEY_FORMAT:Ljava/lang/String; = "MAP_KEY_%d"

.field private static final MAP_VALUE_FORMAT:Ljava/lang/String; = "MAP_VALUE_%d"

.field private static final PARCEL_UUID_KEY:Ljava/lang/String; = "PARCEL_UUID"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/server/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda1;

    sput-object v0, Lcom/android/server/vcn/util/PersistableBundleUtils;->INTEGER_SERIALIZER:Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;

    sget-object v0, Lcom/android/server/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/android/server/vcn/util/PersistableBundleUtils;->INTEGER_DESERIALIZER:Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromByteArray([B)Landroid/os/PersistableBundle;
    .locals 3

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BYTE_ARRAY_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromList(Ljava/util/List;Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer<",
            "TT;>;)",
            "Landroid/os/PersistableBundle;"
        }
    .end annotation

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "COLLECTION_LENGTH"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "LIST_ITEM_%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;->toPersistableBundle(Ljava/lang/Object;)Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static fromMap(Ljava/util/Map;Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer<",
            "TK;>;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer<",
            "TV;>;)",
            "Landroid/os/PersistableBundle;"
        }
    .end annotation

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    const-string v2, "COLLECTION_LENGTH"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "MAP_KEY_%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    const-string v6, "MAP_VALUE_%d"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;->toPersistableBundle(Ljava/lang/Object;)Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    nop

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;->toPersistableBundle(Ljava/lang/Object;)Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static fromParcelUuid(Landroid/os/ParcelUuid;)Landroid/os/PersistableBundle;
    .locals 3

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    invoke-virtual {p0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PARCEL_UUID"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Integer;)Landroid/os/PersistableBundle;
    .locals 3

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "INTEGER_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method static synthetic lambda$static$1(Landroid/os/PersistableBundle;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "INTEGER_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Landroid/os/PersistableBundle;)[B
    .locals 3

    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "BYTE_ARRAY_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "PersistableBundle contains invalid byte array"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/PersistableBundle;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "COLLECTION_LENGTH"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "LIST_ITEM_%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;->fromPersistableBundle(Landroid/os/PersistableBundle;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static toMap(Landroid/os/PersistableBundle;Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/LinkedHashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/PersistableBundle;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer<",
            "TK;>;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer<",
            "TV;>;)",
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    const-string v0, "COLLECTION_LENGTH"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "MAP_KEY_%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    const-string v5, "MAP_VALUE_%d"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v5

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-interface {p1, v5}, Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;->fromPersistableBundle(Landroid/os/PersistableBundle;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p2, v6}, Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;->fromPersistableBundle(Landroid/os/PersistableBundle;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static toParcelUuid(Landroid/os/PersistableBundle;)Landroid/os/ParcelUuid;
    .locals 1

    const-string v0, "PARCEL_UUID"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method
