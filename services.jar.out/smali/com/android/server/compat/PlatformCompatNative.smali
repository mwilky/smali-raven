.class public Lcom/android/server/compat/PlatformCompatNative;
.super Lcom/android/internal/compat/IPlatformCompatNative$Stub;
.source "PlatformCompatNative.java"


# instance fields
.field private final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method public constructor <init>(Lcom/android/server/compat/PlatformCompat;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/compat/IPlatformCompatNative$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/compat/PlatformCompatNative;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    return-void
.end method


# virtual methods
.method public isChangeEnabledByPackageName(JLjava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompatNative;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isChangeEnabledByUid(JI)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompatNative;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result v0

    return v0
.end method

.method public reportChangeByPackageName(JLjava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompatNative;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/compat/PlatformCompat;->reportChangeByPackageName(JLjava/lang/String;I)V

    return-void
.end method

.method public reportChangeByUid(JI)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompatNative;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/compat/PlatformCompat;->reportChangeByUid(JI)V

    return-void
.end method
