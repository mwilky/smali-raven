.class public final synthetic Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/MediaControlPanel;

.field public final synthetic f$1:I

.field public final synthetic f$10:Lcom/android/systemui/media/MediaData;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$6:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:Lcom/android/systemui/monet/ColorScheme;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/MediaControlPanel;ILjava/lang/String;IZZLandroid/graphics/drawable/Drawable;IILcom/android/systemui/monet/ColorScheme;Lcom/android/systemui/media/MediaData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda21;->f$0:Lcom/android/systemui/media/MediaControlPanel;

    iput p2, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda21;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda21;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda21;->f$3:I

    iput-boolean p5, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda21;->f$4:Z

    iput-boolean p6, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda21;->f$5:Z

    iput-object p7, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda21;->f$6:Landroid/graphics/drawable/Drawable;

    iput p8, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda21;->f$7:I

    iput p9, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda21;->f$8:I

    iput-object p10, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda21;->f$9:Lcom/android/systemui/monet/ColorScheme;

    iput-object p11, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda21;->f$10:Lcom/android/systemui/media/MediaData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda21;->f$0:Lcom/android/systemui/media/MediaControlPanel;

    iget v1, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda21;->f$1:I

    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda21;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda21;->f$3:I

    iget-boolean v4, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda21;->f$4:Z

    iget-boolean v5, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda21;->f$5:Z

    iget-object v6, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda21;->f$6:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda21;->f$7:I

    iget v8, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda21;->f$8:I

    iget-object v9, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda21;->f$9:Lcom/android/systemui/monet/ColorScheme;

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda21;->f$10:Lcom/android/systemui/media/MediaData;

    iget v10, v0, Lcom/android/systemui/media/MediaControlPanel;->mArtworkBoundId:I

    if-ge v1, v10, :cond_0

    invoke-static {v2, v3}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    goto/16 :goto_6

    :cond_0
    iput v1, v0, Lcom/android/systemui/media/MediaControlPanel;->mArtworkBoundId:I

    iget-object v1, v0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v1, v1, Lcom/android/systemui/media/MediaViewHolder;->albumView:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v10, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    if-nez v4, :cond_1

    iget-boolean v4, v0, Lcom/android/systemui/media/MediaControlPanel;->mIsArtworkBound:Z

    if-nez v4, :cond_4

    if-eqz v5, :cond_4

    :cond_1
    iget-object v4, v0, Lcom/android/systemui/media/MediaControlPanel;->mPrevArtwork:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    new-instance v4, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v11, 0x2

    new-array v11, v11, [Landroid/graphics/drawable/Drawable;

    iget-object v12, v0, Lcom/android/systemui/media/MediaControlPanel;->mPrevArtwork:Landroid/graphics/drawable/Drawable;

    aput-object v12, v11, v10

    const/4 v12, 0x1

    aput-object v6, v11, v12

    invoke-direct {v4, v11}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-static {v4, v10, v7, v8}, Lcom/android/systemui/media/MediaControlPanel;->scaleTransitionDrawableLayer(Landroid/graphics/drawable/TransitionDrawable;III)V

    invoke-static {v4, v12, v7, v8}, Lcom/android/systemui/media/MediaControlPanel;->scaleTransitionDrawableLayer(Landroid/graphics/drawable/TransitionDrawable;III)V

    const/16 v7, 0x11

    invoke-virtual {v4, v10, v7}, Landroid/graphics/drawable/TransitionDrawable;->setLayerGravity(II)V

    invoke-virtual {v4, v12, v7}, Landroid/graphics/drawable/TransitionDrawable;->setLayerGravity(II)V

    xor-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v5, :cond_3

    const/16 v1, 0x14d

    goto :goto_0

    :cond_3
    const/16 v1, 0x50

    :goto_0
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :goto_1
    iput-object v6, v0, Lcom/android/systemui/media/MediaControlPanel;->mPrevArtwork:Landroid/graphics/drawable/Drawable;

    iput-boolean v5, v0, Lcom/android/systemui/media/MediaControlPanel;->mIsArtworkBound:Z

    :cond_4
    iget-object v1, v0, Lcom/android/systemui/media/MediaControlPanel;->mColorSchemeTransition:Lcom/android/systemui/media/ColorSchemeTransition;

    iget-boolean v4, v0, Lcom/android/systemui/media/MediaControlPanel;->mIsArtworkBound:Z

    iput-boolean v4, v1, Lcom/android/systemui/media/ColorSchemeTransition;->isGradientEnabled:Z

    iget-object v4, v1, Lcom/android/systemui/media/ColorSchemeTransition;->colorTransitions:[Lcom/android/systemui/media/AnimatingColorTransition;

    array-length v5, v4

    :cond_5
    :goto_2
    if-ge v10, v5, :cond_7

    aget-object v6, v4, v10

    add-int/lit8 v10, v10, 0x1

    if-nez v9, :cond_6

    iget v7, v6, Lcom/android/systemui/media/AnimatingColorTransition;->defaultColor:I

    goto :goto_3

    :cond_6
    iget-object v7, v6, Lcom/android/systemui/media/AnimatingColorTransition;->extractColor:Lkotlin/jvm/functions/Function1;

    invoke-interface {v7, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    :goto_3
    iget v8, v6, Lcom/android/systemui/media/AnimatingColorTransition;->targetColor:I

    if-eq v7, v8, :cond_5

    iget v8, v6, Lcom/android/systemui/media/AnimatingColorTransition;->currentColor:I

    iput v8, v6, Lcom/android/systemui/media/AnimatingColorTransition;->sourceColor:I

    iput v7, v6, Lcom/android/systemui/media/AnimatingColorTransition;->targetColor:I

    iget-object v7, v6, Lcom/android/systemui/media/AnimatingColorTransition;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v6, v6, Lcom/android/systemui/media/AnimatingColorTransition;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_7
    if-nez v9, :cond_8

    goto :goto_4

    :cond_8
    iget-object v1, v1, Lcom/android/systemui/media/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v1, v1, Lcom/android/systemui/media/MediaViewHolder;->gutsViewHolder:Lcom/android/systemui/media/GutsViewHolder;

    iput-object v9, v1, Lcom/android/systemui/media/GutsViewHolder;->colorScheme:Lcom/android/systemui/monet/ColorScheme;

    :goto_4
    iget-object v1, v0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v1, v1, Lcom/android/systemui/media/MediaViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    iget-object v4, p0, Lcom/android/systemui/media/MediaData;->appIcon:Landroid/graphics/drawable/Icon;

    if-eqz v4, :cond_9

    iget-boolean v5, p0, Lcom/android/systemui/media/MediaData;->resumption:Z

    if-nez v5, :cond_9

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    iget-object p0, v0, Lcom/android/systemui/media/MediaControlPanel;->mColorSchemeTransition:Lcom/android/systemui/media/ColorSchemeTransition;

    iget-object p0, p0, Lcom/android/systemui/media/ColorSchemeTransition;->accentPrimary:Lcom/android/systemui/media/AnimatingColorTransition;

    iget p0, p0, Lcom/android/systemui/media/AnimatingColorTransition;->targetColor:I

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_5

    :cond_9
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/media/MediaData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v4, "Cannot find icon for package "

    invoke-static {v4}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object p0, p0, Lcom/android/systemui/media/MediaData;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "MediaControlPanel"

    invoke-static {v4, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const p0, 0x7f080625

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_5
    invoke-static {v2, v3}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    :goto_6
    return-void
.end method
