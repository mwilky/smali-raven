.class final Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ForgetFadeUidInfo"
.end annotation


# instance fields
.field private final mUid:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;->mUid:I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;->mUid:I

    return v0
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

    goto :goto_0

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;

    iget v3, v2, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;->mUid:I

    iget v4, p0, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;->mUid:I

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;->mUid:I

    return v0
.end method
