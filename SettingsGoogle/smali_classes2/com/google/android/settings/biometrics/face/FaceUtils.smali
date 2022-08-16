.class public Lcom/google/android/settings/biometrics/face/FaceUtils;
.super Ljava/lang/Object;
.source "FaceUtils.java"


# static fields
.field public static final CENTER_BUCKETS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/settings/biometrics/face/FaceUtils;->CENTER_BUCKETS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x454
        0x458
        0x459
        0x45a
        0x45e
    .end array-data
.end method

.method public static isOneOfCenterBuckets(I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/google/android/settings/biometrics/face/FaceUtils;->CENTER_BUCKETS:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v2, v2, v1

    if-ne p0, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static writeVendorLog(II)V
    .locals 13

    const/16 v0, 0x57

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x16

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v2, p0

    move v7, p1

    invoke-static/range {v0 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIZIIIZ)V

    return-void
.end method
