.class public Lcom/android/server/am/ActivityManagerUtils;
.super Ljava/lang/Object;
.source "ActivityManagerUtils.java"


# static fields
.field private static sAndroidIdHash:Ljava/lang/Integer;

.field private static final sHashCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sInjectedAndroidId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerUtils;->sHashCache:Landroid/util/ArrayMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractByte([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    mul-int/lit8 v1, p1, 0x8

    shl-int/2addr v0, v1

    return v0
.end method

.method static getAndroidIdHash()I
    .locals 2

    sget-object v0, Lcom/android/server/am/ActivityManagerUtils;->sAndroidIdHash:Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerUtils;->sInjectedAndroidId:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerUtils;->getUnsignedHashUnCached(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ActivityManagerUtils;->sAndroidIdHash:Ljava/lang/Integer;

    :cond_1
    sget-object v0, Lcom/android/server/am/ActivityManagerUtils;->sAndroidIdHash:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static getUnsignedHashCached(Ljava/lang/String;)I
    .locals 5

    sget-object v0, Lcom/android/server/am/ActivityManagerUtils;->sHashCache:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v0

    return v2

    :cond_0
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerUtils;->getUnsignedHashUnCached(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getUnsignedHashUnCached(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerUtils;->unsignedIntFromBytes([B)I

    move-result v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static hashComponentNameForAtom(Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerUtils;->getUnsignedHashUnCached(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerUtils;->getAndroidIdHash()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method static injectAndroidIdForTest(Ljava/lang/String;)V
    .locals 1

    sput-object p0, Lcom/android/server/am/ActivityManagerUtils;->sInjectedAndroidId:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ActivityManagerUtils;->sAndroidIdHash:Ljava/lang/Integer;

    return-void
.end method

.method public static shouldSamplePackageForAtom(Ljava/lang/String;F)Z
    .locals 7

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    return v2

    :cond_1
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerUtils;->getUnsignedHashCached(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerUtils;->getAndroidIdHash()I

    move-result v3

    xor-int/2addr v0, v3

    int-to-double v3, v0

    const-wide v5, 0x41dfffffffc00000L    # 2.147483647E9

    div-double/2addr v3, v5

    float-to-double v5, p1

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method static unsignedIntFromBytes([B)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/am/ActivityManagerUtils;->extractByte([BI)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerUtils;->extractByte([BI)I

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerUtils;->extractByte([BI)I

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerUtils;->extractByte([BI)I

    move-result v1

    or-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method
