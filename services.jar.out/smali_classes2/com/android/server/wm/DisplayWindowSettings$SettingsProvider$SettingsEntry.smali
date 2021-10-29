.class public Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
.super Ljava/lang/Object;
.source "DisplayWindowSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsEntry"
.end annotation


# instance fields
.field mDontMoveToTop:Ljava/lang/Boolean;

.field mFixedToUserRotation:Ljava/lang/Integer;

.field mForcedDensity:I

.field mForcedHeight:I

.field mForcedScalingMode:Ljava/lang/Integer;

.field mForcedWidth:I

.field mIgnoreDisplayCutout:Ljava/lang/Boolean;

.field mIgnoreOrientationRequest:Ljava/lang/Boolean;

.field mImePolicy:Ljava/lang/Integer;

.field mRemoveContentMode:I

.field mShouldShowSystemDecors:Ljava/lang/Boolean;

.field mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

.field mUserRotation:Ljava/lang/Integer;

.field mUserRotationMode:Ljava/lang/Integer;

.field mWindowingMode:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->setTo(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)Z

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

    goto/16 :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    iget v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    iget v4, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    iget v4, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    iget v4, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    iget v4, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    iget v4, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    iget-object v4, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    iget-object v4, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    iget-object v4, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    iget-object v4, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    iget-object v4, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setTo(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    iget v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    if-eq v1, v2, :cond_0

    iput v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    const/4 v0, 0x1

    :cond_2
    iget v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    iget v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    if-eq v1, v2, :cond_3

    iput v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    const/4 v0, 0x1

    :cond_3
    iget v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    iget v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    if-eq v1, v2, :cond_4

    iput v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    const/4 v0, 0x1

    :cond_4
    iget v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    iget v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    if-eq v1, v2, :cond_5

    iput v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    const/4 v0, 0x1

    :cond_5
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    const/4 v0, 0x1

    :cond_6
    iget v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    iget v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    if-eq v1, v2, :cond_7

    iput v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    const/4 v0, 0x1

    :cond_7
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_8

    iput-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    const/4 v0, 0x1

    :cond_8
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_9

    iput-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    const/4 v0, 0x1

    :cond_9
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    const/4 v0, 0x1

    :cond_a
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    const/4 v0, 0x1

    :cond_b
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_c

    iput-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    const/4 v0, 0x1

    :cond_c
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_d

    iput-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    const/4 v0, 0x1

    :cond_d
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_e

    iput-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsEntry{mWindowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUserRotationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mForcedWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mForcedHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mForcedDensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mForcedScalingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoveContentMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mShouldShowWithInsecureKeyguard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mShouldShowSystemDecors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mShouldShowIme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFixedToUserRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIgnoreOrientationRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIgnoreDisplayCutout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDontMoveToTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateFrom(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    if-eq v1, v2, :cond_0

    iput v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    const/4 v0, 0x1

    :cond_2
    iget v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    if-eqz v1, :cond_3

    iget v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    if-eq v1, v2, :cond_3

    iput v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    const/4 v0, 0x1

    :cond_3
    iget v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    if-eqz v1, :cond_4

    iget v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    if-eq v1, v2, :cond_4

    iput v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    const/4 v0, 0x1

    :cond_4
    iget v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    if-eqz v1, :cond_5

    iget v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    if-eq v1, v2, :cond_5

    iput v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    const/4 v0, 0x1

    :cond_5
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    const/4 v0, 0x1

    :cond_6
    iget v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    if-eqz v1, :cond_7

    iget v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    if-eq v1, v2, :cond_7

    iput v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    const/4 v0, 0x1

    :cond_7
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_8

    iput-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    const/4 v0, 0x1

    :cond_8
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_9

    iput-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    const/4 v0, 0x1

    :cond_9
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    const/4 v0, 0x1

    :cond_a
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    const/4 v0, 0x1

    :cond_b
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_c

    iput-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    const/4 v0, 0x1

    :cond_c
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_d

    iput-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    const/4 v0, 0x1

    :cond_d
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_e

    iput-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    const/4 v0, 0x1

    :cond_e
    return v0
.end method
