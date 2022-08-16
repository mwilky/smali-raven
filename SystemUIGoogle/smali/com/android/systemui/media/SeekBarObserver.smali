.class public final Lcom/android/systemui/media/SeekBarObserver;
.super Ljava/lang/Object;
.source "SeekBarObserver.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/android/systemui/media/SeekBarViewModel$Progress;",
        ">;"
    }
.end annotation


# instance fields
.field public final holder:Lcom/android/systemui/media/MediaViewHolder;

.field public final seekBarDisabledHeight:I

.field public final seekBarDisabledVerticalPadding:I

.field public final seekBarEnabledMaxHeight:I

.field public final seekBarEnabledVerticalPadding:I

.field public seekBarResetAnimator:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaViewHolder;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v0, p1, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarEnabledMaxHeight:I

    iget-object v0, p1, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarDisabledHeight:I

    iget-object v0, p1, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarEnabledVerticalPadding:I

    iget-object v0, p1, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarDisabledVerticalPadding:I

    iget-object p0, p1, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0706c8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    iget-object v0, p1, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p1, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p1, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget-object p1, p1, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v3, p1, Lcom/android/systemui/media/SquigglyProgress;

    if-eqz v3, :cond_0

    check-cast p1, Lcom/android/systemui/media/SquigglyProgress;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    iput p0, p1, Lcom/android/systemui/media/SquigglyProgress;->waveLength:F

    iput v0, p1, Lcom/android/systemui/media/SquigglyProgress;->lineAmplitude:F

    iput v1, p1, Lcom/android/systemui/media/SquigglyProgress;->phaseSpeed:F

    iget p0, p1, Lcom/android/systemui/media/SquigglyProgress;->strokeWidth:F

    cmpg-float p0, p0, v2

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    iput v2, p1, Lcom/android/systemui/media/SquigglyProgress;->strokeWidth:F

    iget-object p0, p1, Lcom/android/systemui/media/SquigglyProgress;->wavePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p0, p1, Lcom/android/systemui/media/SquigglyProgress;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_2
    return-void
.end method


# virtual methods
.method public buildResetAnimator(I)Landroid/animation/Animator;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object p0, p0, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x2ee

    add-int/2addr p1, v1

    const/4 v2, 0x1

    aput p1, v0, v2

    const-string/jumbo p1, "progress"

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    int-to-long v0, v1

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p1, Lcom/android/systemui/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/android/systemui/media/SquigglyProgress;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/media/SquigglyProgress;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;->enabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object p1, p1, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMaxHeight()I

    move-result p1

    iget v1, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarDisabledHeight:I

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object p1, p1, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setMaxHeight(I)V

    iget p1, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarDisabledVerticalPadding:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SeekBarObserver;->setVerticalPadding(I)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object p1, p1, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/systemui/media/SquigglyProgress;->setAnimate(Z)V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object p1, p1, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object p1, p1, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object p1, p1, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object p1, p1, Lcom/android/systemui/media/MediaViewHolder;->scrubbingElapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object p0, p0, Lcom/android/systemui/media/MediaViewHolder;->scrubbingTotalTimeView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v1, v1, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-boolean v3, p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;->seekAvailable:Z

    if-eqz v3, :cond_4

    const/16 v3, 0xff

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v1, v1, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;->seekAvailable:Z

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    const/4 v1, 0x1

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    iget-boolean v3, p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;->playing:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;->scrubbing:Z

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_3

    :cond_6
    move v3, v2

    :goto_3
    invoke-virtual {v0, v3}, Lcom/android/systemui/media/SquigglyProgress;->setAnimate(Z)V

    :goto_4
    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    iget-boolean v3, p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;->seekAvailable:Z

    xor-int/2addr v3, v1

    iput-boolean v3, v0, Lcom/android/systemui/media/SquigglyProgress;->transitionEnabled:Z

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_5
    iget-object v0, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMaxHeight()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarEnabledMaxHeight:I

    if-eq v0, v3, :cond_8

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMaxHeight(I)V

    iget v0, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarEnabledVerticalPadding:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/SeekBarObserver;->setVerticalPadding(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    iget v3, p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;->duration:I

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    iget v0, p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;->duration:I

    int-to-long v3, v0

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;->scrubbing:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v3, v3, Lcom/android/systemui/media/MediaViewHolder;->scrubbingTotalTimeView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v3, p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    if-nez v3, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-boolean v4, p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;->scrubbing:Z

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarResetAnimator:Landroid/animation/Animator;

    if-nez v4, :cond_b

    move v4, v2

    goto :goto_6

    :cond_b
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v4

    :goto_6
    if-nez v4, :cond_d

    const/16 v4, 0xfa

    if-gt v3, v4, :cond_c

    iget-object v7, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v7, v7, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getProgress()I

    move-result v7

    if-le v7, v4, :cond_c

    invoke-virtual {p0, v3}, Lcom/android/systemui/media/SeekBarObserver;->buildResetAnimator(I)Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    iput-object v4, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarResetAnimator:Landroid/animation/Animator;

    goto :goto_7

    :cond_c
    iget-object v4, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v4, v4, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_d
    :goto_7
    int-to-long v3, v3

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    iget-boolean p1, p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;->scrubbing:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object p1, p1, Lcom/android/systemui/media/MediaViewHolder;->scrubbingElapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    iget-object p0, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object p0, p0, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    const v4, 0x7f130246

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v0, v5, v1

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_8
    return-void
.end method

.method public final setVerticalPadding(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v1, v1, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v2, v2, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object p0, p0, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/widget/SeekBar;->setPadding(IIII)V

    return-void
.end method
