.class public Lcom/google/android/systemui/fingerprint/UdfpsGhbmProvider;
.super Ljava/lang/Object;
.source "UdfpsGhbmProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UdfpsGhbmProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disableGhbm(Landroid/view/Surface;)V
    .locals 0

    const-string p0, "UdfpsGhbmProvider"

    const-string p1, "disableGhbm"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "udfps_ghbm_jni.so is missing - GHBM is not supported."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableGhbm(Landroid/view/Surface;)V
    .locals 0

    const-string p0, "UdfpsGhbmProvider"

    const-string p1, "enableGhbm"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "udfps_ghbm_jni.so is missing - GHBM is not supported."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
