.class Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;
.super Ljava/lang/Object;
.source "PerPackageReadTimeouts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PerPackageReadTimeouts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VersionCodes"
.end annotation


# static fields
.field public static final ALL_VERSION_CODES:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;


# instance fields
.field public final maxVersionCode:J

.field public final minVersionCode:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    const-wide/high16 v1, -0x8000000000000000L

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;-><init>(JJ)V

    sput-object v0, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->ALL_VERSION_CODES:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->minVersionCode:J

    iput-wide p3, p0, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->maxVersionCode:J

    return-void
.end method

.method static parse(Ljava/lang/String;)Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;
    .locals 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->ALL_VERSION_CODES:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    return-object v0

    :cond_0
    const/4 v0, 0x2

    const-string v1, "-"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    aget-object v1, v0, v2

    sget-object v2, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->ALL_VERSION_CODES:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    iget-wide v3, v2, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->minVersionCode:J

    invoke-static {v1, v3, v4}, Lcom/android/server/pm/PerPackageReadTimeouts;->tryParseLong(Ljava/lang/String;J)J

    move-result-wide v3

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget-wide v5, v2, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->maxVersionCode:J

    invoke-static {v1, v5, v6}, Lcom/android/server/pm/PerPackageReadTimeouts;->tryParseLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v5, v3, v1

    if-gtz v5, :cond_1

    new-instance v5, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    invoke-direct {v5, v3, v4, v1, v2}, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;-><init>(JJ)V

    return-object v5

    :pswitch_1
    :try_start_0
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    new-instance v3, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    invoke-direct {v3, v1, v2, v1, v2}, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;-><init>(JJ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->ALL_VERSION_CODES:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    return-object v2

    :cond_1
    :goto_0
    sget-object v1, Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;->ALL_VERSION_CODES:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
