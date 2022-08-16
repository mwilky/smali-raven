.class public final synthetic Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/MediaControlPanel;

.field public final synthetic f$1:Lcom/android/systemui/media/MediaData;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:I

.field public final synthetic f$7:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/MediaControlPanel;Lcom/android/systemui/media/MediaData;IIILjava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda15;->f$0:Lcom/android/systemui/media/MediaControlPanel;

    iput-object p2, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda15;->f$1:Lcom/android/systemui/media/MediaData;

    iput p3, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda15;->f$2:I

    iput p4, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda15;->f$3:I

    iput p5, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda15;->f$4:I

    iput-object p6, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda15;->f$5:Ljava/lang/String;

    iput p7, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda15;->f$6:I

    iput-boolean p8, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda15;->f$7:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda15;->f$0:Lcom/android/systemui/media/MediaControlPanel;

    iget-object v11, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda15;->f$1:Lcom/android/systemui/media/MediaData;

    iget v8, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda15;->f$2:I

    iget v9, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda15;->f$3:I

    iget v2, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda15;->f$4:I

    iget-object v3, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda15;->f$5:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda15;->f$6:I

    iget-boolean v5, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda15;->f$7:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v11, Lcom/android/systemui/media/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/monet/ColorScheme;

    sget-object v10, Lcom/android/systemui/monet/Style;->CONTENT:Lcom/android/systemui/monet/Style;

    invoke-direct {v7, v6, v10}, Lcom/android/systemui/monet/ColorScheme;-><init>(Landroid/app/WallpaperColors;Lcom/android/systemui/monet/Style;)V

    iget-object v6, v1, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v0, v0, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-gt v0, v8, :cond_0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-le v0, v9, :cond_1

    :cond_0
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, v8

    int-to-float v0, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v0, v10

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int/2addr v12, v9

    int-to-float v12, v12

    div-float/2addr v12, v10

    neg-float v0, v0

    float-to-int v0, v0

    neg-float v10, v12

    float-to-int v10, v10

    invoke-virtual {v6, v0, v10}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    invoke-virtual {p0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :try_start_0
    iget-object v6, v1, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v11, Lcom/android/systemui/media/MediaData;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/monet/ColorScheme;

    invoke-static {v6}, Landroid/app/WallpaperColors;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/app/WallpaperColors;

    move-result-object v6

    sget-object v10, Lcom/android/systemui/monet/Style;->CONTENT:Lcom/android/systemui/monet/Style;

    invoke-direct {v7, v6, v10}, Lcom/android/systemui/monet/ColorScheme;-><init>(Landroid/app/WallpaperColors;Lcom/android/systemui/monet/Style;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v6, v0

    move-object v10, v7

    move-object v7, p0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v7, "Cannot find icon for package "

    invoke-static {v7}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v11, Lcom/android/systemui/media/MediaData;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "MediaControlPanel"

    invoke-static {v10, v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, 0x0

    move-object v7, p0

    move-object v10, v6

    move v6, v0

    :goto_1
    iget-object p0, v1, Lcom/android/systemui/media/MediaControlPanel;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v12, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda21;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda21;-><init>(Lcom/android/systemui/media/MediaControlPanel;ILjava/lang/String;IZZLandroid/graphics/drawable/Drawable;IILcom/android/systemui/monet/ColorScheme;Lcom/android/systemui/media/MediaData;)V

    invoke-interface {p0, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
