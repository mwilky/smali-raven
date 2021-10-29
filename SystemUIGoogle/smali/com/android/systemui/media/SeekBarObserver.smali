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
.field private final holder:Lcom/android/systemui/media/PlayerViewHolder;

.field private final seekBarDisabledHeight:I

.field private final seekBarDisabledVerticalPadding:I

.field private final seekBarEnabledMaxHeight:I

.field private final seekBarEnabledVerticalPadding:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/PlayerViewHolder;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_media_enabled_seekbar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarEnabledMaxHeight:I

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_media_disabled_seekbar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarDisabledHeight:I

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_media_enabled_seekbar_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarEnabledVerticalPadding:I

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->qs_media_disabled_seekbar_vertical_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarDisabledVerticalPadding:I

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/android/systemui/media/SeekBarViewModel$Progress;)V
    .locals 6

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/media/SeekBarViewModel$Progress;->getEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMaxHeight()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarDisabledHeight:I

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarDisabledHeight:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMaxHeight(I)V

    iget p1, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarDisabledVerticalPadding:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SeekBarObserver;->setVerticalPadding(I)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getElapsedTimeView()Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/PlayerViewHolder;->getTotalTimeView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/media/SeekBarViewModel$Progress;->getSeekAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0xff

    :cond_2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/media/SeekBarViewModel$Progress;->getSeekAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMaxHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarEnabledMaxHeight:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarEnabledMaxHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMaxHeight(I)V

    iget v0, p0, Lcom/android/systemui/media/SeekBarObserver;->seekBarEnabledVerticalPadding:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/SeekBarObserver;->setVerticalPadding(I)V

    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/media/SeekBarViewModel$Progress;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v1}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v1}, Lcom/android/systemui/media/PlayerViewHolder;->getTotalTimeView()Landroid/widget/TextView;

    move-result-object v1

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/systemui/media/SeekBarViewModel$Progress;->getElapsedTime()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p0, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/PlayerViewHolder;->getElapsedTimeView()Landroid/widget/TextView;

    move-result-object p0

    int-to-long v0, p1

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SeekBarObserver;->onChanged(Lcom/android/systemui/media/SeekBarViewModel$Progress;)V

    return-void
.end method

.method public final setVerticalPadding(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v1}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/media/SeekBarObserver;->holder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p0

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/widget/SeekBar;->setPadding(IIII)V

    return-void
.end method
