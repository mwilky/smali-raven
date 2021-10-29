.class Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;
.super Ljava/lang/Object;
.source "LocationAttributionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/injector/LocationAttributionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BucketKey"
.end annotation


# instance fields
.field private final mBucket:Ljava/lang/String;

.field private final mKey:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;->mBucket:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;->mKey:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/android/server/location/injector/LocationAttributionHelper$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;

    iget-object v3, p0, Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;->mBucket:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;->mBucket:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;->mKey:Ljava/lang/Object;

    iget-object v4, v2, Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;->mKey:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;->mBucket:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/location/injector/LocationAttributionHelper$BucketKey;->mKey:Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
