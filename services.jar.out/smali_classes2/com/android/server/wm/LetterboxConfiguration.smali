.class final Lcom/android/server/wm/LetterboxConfiguration;
.super Ljava/lang/Object;
.source "LetterboxConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/LetterboxConfiguration$LetterboxReachabilityPosition;,
        Lcom/android/server/wm/LetterboxConfiguration$LetterboxBackgroundType;
    }
.end annotation


# static fields
.field static final LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND:I = 0x1

.field static final LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND_FLOATING:I = 0x2

.field static final LETTERBOX_BACKGROUND_SOLID_COLOR:I = 0x0

.field static final LETTERBOX_BACKGROUND_WALLPAPER:I = 0x3

.field static final LETTERBOX_REACHABILITY_POSITION_CENTER:I = 0x1

.field static final LETTERBOX_REACHABILITY_POSITION_LEFT:I = 0x0

.field static final LETTERBOX_REACHABILITY_POSITION_RIGHT:I = 0x2

.field static final MIN_FIXED_ORIENTATION_LETTERBOX_ASPECT_RATIO:F = 1.0f


# instance fields
.field final mContext:Landroid/content/Context;

.field private mDefaultPositionForReachability:I

.field private mFixedOrientationLetterboxAspectRatio:F

.field private mIsReachabilityEnabled:Z

.field private mLetterboxActivityCornersRadius:I

.field private mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

.field private mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

.field private mLetterboxBackgroundType:I

.field private mLetterboxBackgroundWallpaperBlurRadius:I

.field private mLetterboxBackgroundWallpaperDarkScrimAlpha:F

.field private mLetterboxHorizontalPositionMultiplier:F

.field private volatile mLetterboxPositionForReachability:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxActivityCornersRadius:I

    invoke-static {p1}, Lcom/android/server/wm/LetterboxConfiguration;->readLetterboxBackgroundTypeFromConfig(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundType:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperBlurRadius:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110100

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsReachabilityEnabled:Z

    invoke-static {p1}, Lcom/android/server/wm/LetterboxConfiguration;->readLetterboxReachabilityPositionFromConfig(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mDefaultPositionForReachability:I

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxPositionForReachability:I

    return-void
.end method

.method static letterboxBackgroundTypeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "LETTERBOX_BACKGROUND_WALLPAPER"

    return-object v0

    :pswitch_1
    const-string v0, "LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND_FLOATING"

    return-object v0

    :pswitch_2
    const-string v0, "LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND"

    return-object v0

    :pswitch_3
    const-string v0, "LETTERBOX_BACKGROUND_SOLID_COLOR"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static letterboxReachabilityPositionToString(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected letterbox position type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const-string v0, "LETTERBOX_REACHABILITY_POSITION_RIGHT"

    return-object v0

    :pswitch_1
    const-string v0, "LETTERBOX_REACHABILITY_POSITION_CENTER"

    return-object v0

    :pswitch_2
    const-string v0, "LETTERBOX_REACHABILITY_POSITION_LEFT"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static readLetterboxBackgroundTypeFromConfig(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    return v1
.end method

.method private static readLetterboxReachabilityPositionFromConfig(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    return v1
.end method


# virtual methods
.method getDefaultPositionForReachability()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mDefaultPositionForReachability:I

    return v0
.end method

.method getFixedOrientationLetterboxAspectRatio()F
    .locals 1

    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    return v0
.end method

.method getHorizontalMultiplierForReachability()F
    .locals 3

    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxPositionForReachability:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected letterbox position type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxPositionForReachability:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :pswitch_1
    const/high16 v0, 0x3f000000    # 0.5f

    return v0

    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getIsReachabilityEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsReachabilityEnabled:Z

    return v0
.end method

.method getLetterboxActivityCornersRadius()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxActivityCornersRadius:I

    return v0
.end method

.method getLetterboxBackgroundColor()Landroid/graphics/Color;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const v0, 0x106017c

    :goto_0
    nop

    iget-object v1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    return-object v1
.end method

.method getLetterboxBackgroundType()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundType:I

    return v0
.end method

.method getLetterboxBackgroundWallpaperBlurRadius()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperBlurRadius:I

    return v0
.end method

.method getLetterboxBackgroundWallpaperDarkScrimAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    return v0
.end method

.method getLetterboxHorizontalPositionMultiplier()F
    .locals 2

    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_1
    return v0
.end method

.method isLetterboxActivityCornersRounded()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxActivityCornersRadius()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method movePositionForReachabilityToNextLeftStop()V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxPositionForReachability:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxPositionForReachability:I

    return-void
.end method

.method movePositionForReachabilityToNextRightStop()V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxPositionForReachability:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxPositionForReachability:I

    return-void
.end method

.method resetDefaultPositionForReachability()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/wm/LetterboxConfiguration;->readLetterboxReachabilityPositionFromConfig(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mDefaultPositionForReachability:I

    return-void
.end method

.method resetFixedOrientationLetterboxAspectRatio()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    return-void
.end method

.method resetIsReachabilityEnabled()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110100

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsReachabilityEnabled:Z

    return-void
.end method

.method resetLetterboxActivityCornersRadius()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxActivityCornersRadius:I

    return-void
.end method

.method resetLetterboxBackgroundColor()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    iput-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    return-void
.end method

.method resetLetterboxBackgroundType()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/wm/LetterboxConfiguration;->readLetterboxBackgroundTypeFromConfig(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundType:I

    return-void
.end method

.method resetLetterboxBackgroundWallpaperBlurRadius()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperBlurRadius:I

    return-void
.end method

.method resetLetterboxBackgroundWallpaperDarkScrimAlpha()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    return-void
.end method

.method resetLetterboxHorizontalPositionMultiplier()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    return-void
.end method

.method setDefaultPositionForReachability(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mDefaultPositionForReachability:I

    return-void
.end method

.method setFixedOrientationLetterboxAspectRatio(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    return-void
.end method

.method setIsReachabilityEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsReachabilityEnabled:Z

    return-void
.end method

.method setLetterboxActivityCornersRadius(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxActivityCornersRadius:I

    return-void
.end method

.method setLetterboxBackgroundColor(Landroid/graphics/Color;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    return-void
.end method

.method setLetterboxBackgroundColorResourceId(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    return-void
.end method

.method setLetterboxBackgroundType(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundType:I

    return-void
.end method

.method setLetterboxBackgroundWallpaperBlurRadius(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperBlurRadius:I

    return-void
.end method

.method setLetterboxBackgroundWallpaperDarkScrimAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    return-void
.end method

.method setLetterboxHorizontalPositionMultiplier(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    return-void
.end method
