.class final Lcom/android/systemui/media/ColorSchemeTransition$textPrimary$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ColorSchemeTransition.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/ColorSchemeTransition;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/ColorSchemeTransition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/ColorSchemeTransition$textPrimary$2;->this$0:Lcom/android/systemui/media/ColorSchemeTransition;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/media/ColorSchemeTransition$textPrimary$2;->this$0:Lcom/android/systemui/media/ColorSchemeTransition;

    iget-object v0, v0, Lcom/android/systemui/media/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/MediaViewHolder;->titleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/ColorSchemeTransition$textPrimary$2;->this$0:Lcom/android/systemui/media/ColorSchemeTransition;

    iget-object v1, v1, Lcom/android/systemui/media/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v1, v1, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/media/ColorSchemeTransition$textPrimary$2;->this$0:Lcom/android/systemui/media/ColorSchemeTransition;

    iget-object v1, v1, Lcom/android/systemui/media/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v1, v1, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/media/ColorSchemeTransition$textPrimary$2;->this$0:Lcom/android/systemui/media/ColorSchemeTransition;

    iget-object v1, v1, Lcom/android/systemui/media/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v1, v1, Lcom/android/systemui/media/MediaViewHolder;->scrubbingElapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/media/ColorSchemeTransition$textPrimary$2;->this$0:Lcom/android/systemui/media/ColorSchemeTransition;

    iget-object v1, v1, Lcom/android/systemui/media/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v1, v1, Lcom/android/systemui/media/MediaViewHolder;->scrubbingTotalTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/media/ColorSchemeTransition$textPrimary$2;->this$0:Lcom/android/systemui/media/ColorSchemeTransition;

    iget-object v1, v1, Lcom/android/systemui/media/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    const/4 v2, 0x7

    new-array v2, v2, [Landroid/widget/ImageButton;

    iget-object v3, v1, Lcom/android/systemui/media/MediaViewHolder;->actionNext:Landroid/widget/ImageButton;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v1, Lcom/android/systemui/media/MediaViewHolder;->actionPrev:Landroid/widget/ImageButton;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, v1, Lcom/android/systemui/media/MediaViewHolder;->action0:Landroid/widget/ImageButton;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, v1, Lcom/android/systemui/media/MediaViewHolder;->action1:Landroid/widget/ImageButton;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-object v3, v1, Lcom/android/systemui/media/MediaViewHolder;->action2:Landroid/widget/ImageButton;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget-object v3, v1, Lcom/android/systemui/media/MediaViewHolder;->action3:Landroid/widget/ImageButton;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    iget-object v1, v1, Lcom/android/systemui/media/MediaViewHolder;->action4:Landroid/widget/ImageButton;

    const/4 v3, 0x6

    aput-object v1, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/ColorSchemeTransition$textPrimary$2;->this$0:Lcom/android/systemui/media/ColorSchemeTransition;

    iget-object p0, p0, Lcom/android/systemui/media/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object p0, p0, Lcom/android/systemui/media/MediaViewHolder;->gutsViewHolder:Lcom/android/systemui/media/GutsViewHolder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/media/GutsViewHolder;->gutsText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-boolean v0, p0, Lcom/android/systemui/media/GutsViewHolder;->isDismissible:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/GutsViewHolder;->cancelText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
