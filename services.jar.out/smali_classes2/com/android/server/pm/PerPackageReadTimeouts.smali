.class Lcom/android/server/pm/PerPackageReadTimeouts;
.super Ljava/lang/Object;
.source "PerPackageReadTimeouts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;,
        Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;
    }
.end annotation


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final sha256certificate:[B

.field public final timeouts:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

.field public final versionCodes:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;


# direct methods
.method private constructor <init>(Ljava/lang/String;[BLcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PerPackageReadTimeouts;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/PerPackageReadTimeouts;->sha256certificate:[B

    iput-object p3, p0, Lcom/android/server/pm/PerPackageReadTimeouts;->versionCodes:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    iput-object p4, p0, Lcom/android/server/pm/PerPackageReadTimeouts;->timeouts:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    return-void
.end method

.method static parse(Ljava/lang/String;Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;)Lcom/android/server/pm/PerPackageReadTimeouts;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p2

    const-string v4, ":"

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    return-object v6

    :pswitch_0
    const/4 v5, 0x3

    aget-object v5, v4, v5

    invoke-static {v5}, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->parse(Ljava/lang/String;)Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    move-result-object v3

    :pswitch_1
    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-static {v5}, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->parse(Ljava/lang/String;)Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    move-result-object v2

    :pswitch_2
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Lcom/android/server/pm/PerPackageReadTimeouts;->tryParseSha256(Ljava/lang/String;)[B

    move-result-object v1

    :pswitch_3
    const/4 v5, 0x0

    aget-object v0, v4, v5

    nop

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v6

    :cond_0
    new-instance v5, Lcom/android/server/pm/PerPackageReadTimeouts;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/server/pm/PerPackageReadTimeouts;-><init>(Ljava/lang/String;[BLcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;)V

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static parseDigestersList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PerPackageReadTimeouts;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->ALL_VERSION_CODES:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    invoke-static {p0}, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->parse(Ljava/lang/String;)Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v6, v2, v4

    invoke-static {v6, v0, v1}, Lcom/android/server/pm/PerPackageReadTimeouts;->parse(Ljava/lang/String;Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;)Lcom/android/server/pm/PerPackageReadTimeouts;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method static tryParseLong(Ljava/lang/String;J)J
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    return-wide p1
.end method

.method static tryParseSha256(Ljava/lang/String;)[B
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    return-object v1
.end method
