.class public Lcom/google/android/systemui/fingerprint/UdfpsGhbmProvider;
.super Ljava/lang/Object;
.source "UdfpsGhbmProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UdfpsGhbmProvider"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "udfps_ghbm_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UdfpsGhbmProvider"

    const-string v2, "Failed to load udfps_ghbm_jni.so"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native disableGhbmNative(Landroid/view/Surface;)V
.end method

.method private native enableGhbmNative(Landroid/view/Surface;)V
.end method


# virtual methods
.method public disableGhbm(Landroid/view/Surface;)V
    .locals 2

    const-string v0, "UdfpsGhbmProvider"

    const-string v1, "disableGhbm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/google/android/systemui/fingerprint/UdfpsGhbmProvider;->disableGhbmNative(Landroid/view/Surface;)V

    return-void
.end method

.method public enableGhbm(Landroid/view/Surface;)V
    .locals 2

    const-string v0, "UdfpsGhbmProvider"

    const-string v1, "enableGhbm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/google/android/systemui/fingerprint/UdfpsGhbmProvider;->enableGhbmNative(Landroid/view/Surface;)V

    return-void
.end method
