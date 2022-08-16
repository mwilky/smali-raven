.class public final Lcom/android/wm/shell/pip/tv/TvPipBoundsState;
.super Lcom/android/wm/shell/pip/PipBoundsState;
.source "TvPipBoundsState.java"


# instance fields
.field public mDesiredTvExpandedAspectRatio:F

.field public final mIsTvExpandedPipSupported:Z

.field public mIsTvPipExpanded:Z

.field public mPipMenuPermanentDecorInsets:Landroid/graphics/Insets;

.field public mPipMenuTemporaryDecorInsets:Landroid/graphics/Insets;

.field public mTvExpandedSize:Landroid/util/Size;

.field public mTvFixedPipOrientation:I

.field public mTvPipGravity:I

.field public mTvPipManuallyCollapsed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsState;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuPermanentDecorInsets:Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuTemporaryDecorInsets:Landroid/graphics/Insets;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.software.expanded_picture_in_picture"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvExpandedPipSupported:Z

    return-void
.end method


# virtual methods
.method public final setBoundsStateForEntry(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/pip/PipBoundsState;->setBoundsStateForEntry(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;)V

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->getExpandedAspectRatioFloat()F

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->setDesiredTvExpandedAspectRatio(FZ)V

    return-void
.end method

.method public final setDesiredTvExpandedAspectRatio(FZ)V
    .locals 2

    if-nez p2, :cond_5

    iget p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    :cond_1
    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    :cond_2
    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_4

    :cond_3
    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDesiredTvExpandedAspectRatio:F

    :cond_4
    return-void

    :cond_5
    :goto_0
    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDesiredTvExpandedAspectRatio:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    const/16 p1, 0x55

    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    return-void
.end method
