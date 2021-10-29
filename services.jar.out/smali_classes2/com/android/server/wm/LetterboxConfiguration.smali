.class final Lcom/android/server/wm/LetterboxConfiguration;
.super Ljava/lang/Object;
.source "LetterboxConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/LetterboxConfiguration$LetterboxBackgroundType;
    }
.end annotation


# static fields
.field static final LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND:I = 0x1

.field static final LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND_FLOATING:I = 0x2

.field static final LETTERBOX_BACKGROUND_SOLID_COLOR:I = 0x0

.field static final LETTERBOX_BACKGROUND_WALLPAPER:I = 0x3

.field static final MIN_FIXED_ORIENTATION_LETTERBOX_ASPECT_RATIO:F = 1.0f


# instance fields
.field final mContext:Landroid/content/Context;

.field private mFixedOrientationLetterboxAspectRatio:F

.field private mLetterboxActivityCornersRadius:I

.field private mLetterboxBackgroundColor:Landroid/graphics/Color;

.field private mLetterboxBackgroundType:I

.field private mLetterboxBackgroundWallpaperBlurRadius:I

.field private mLetterboxBackgroundWallpaperDarkScrimAlpha:F

.field private mLetterboxHorizontalPositionMultiplier:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxActivityCornersRadius:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106017c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundColor:Landroid/graphics/Color;

    invoke-static {p1}, Lcom/android/server/wm/LetterboxConfiguration;->readLetterboxBackgroundTypeFromConfig(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundType:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperBlurRadius:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxHorizontalPositionMultiplier:F

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

.method private static readLetterboxBackgroundTypeFromConfig(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0071

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


# virtual methods
.method getFixedOrientationLetterboxAspectRatio()F
    .locals 1

    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    return v0
.end method

.method getLetterboxActivityCornersRadius()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxActivityCornersRadius:I

    return v0
.end method

.method getLetterboxBackgroundColor()Landroid/graphics/Color;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundColor:Landroid/graphics/Color;

    return-object v0
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
    .locals 1

    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    return v0
.end method

.method isLetterboxActivityCornersRounded()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxActivityCornersRadius()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setFixedOrientationLetterboxAspectRatio(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    return-void
.end method

.method setLetterboxHorizontalPositionMultiplier(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    return-void
.end method
