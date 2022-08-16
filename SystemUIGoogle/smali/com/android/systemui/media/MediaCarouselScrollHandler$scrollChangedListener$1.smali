.class public final Lcom/android/systemui/media/MediaCarouselScrollHandler$scrollChangedListener$1;
.super Ljava/lang/Object;
.source "MediaCarouselScrollHandler.kt"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaCarouselScrollHandler;-><init>(Lcom/android/systemui/media/MediaScrollView;Lcom/android/systemui/qs/PageIndicator;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/MediaUiEventLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$scrollChangedListener$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$scrollChangedListener$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    iget p2, p1, Lcom/android/systemui/media/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p1, Lcom/android/systemui/media/MediaScrollView;->contentContainer:Landroid/view/ViewGroup;

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    move-object p3, p4

    :goto_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p1

    sub-int/2addr p3, p1

    sub-int p2, p3, p2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$scrollChangedListener$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    iget p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    div-int p3, p2, p1

    rem-int/2addr p2, p1

    iget p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    const/4 p5, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    move p1, v0

    goto :goto_1

    :cond_3
    move p1, p5

    :goto_1
    iput p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    if-eqz p2, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, p5

    :goto_2
    iget v2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    if-ne p3, v2, :cond_5

    if-eq p1, v1, :cond_7

    :cond_5
    iput p3, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    if-eq v2, p3, :cond_6

    iget-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleToUser:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->logSmartspaceImpression:Lkotlin/jvm/functions/Function1;

    iget-boolean v1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->qsExpanded:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->logger:Lcom/android/systemui/media/MediaUiEventLogger;

    iget-object p1, p1, Lcom/android/systemui/media/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/media/MediaUiEvent;->CAROUSEL_PAGE:Lcom/android/systemui/media/MediaUiEvent;

    invoke-interface {p1, v1, p5, p4, p3}, Lcom/android/internal/logging/UiEventLogger;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->closeGuts:Lkotlin/jvm/functions/Function1;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->updatePlayerVisibilities()V

    :cond_7
    iget p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    int-to-float p1, p1

    iget p3, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    const/4 p4, 0x0

    if-lez p3, :cond_8

    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    goto :goto_3

    :cond_8
    move p2, p4

    :goto_3
    add-float/2addr p1, p2

    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p2, p1

    int-to-float p1, v0

    sub-float p1, p2, p1

    :cond_9
    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/PageIndicator;->setLocation(F)V

    iget p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->contentTranslation:F

    cmpg-float p1, p1, p4

    if-nez p1, :cond_a

    move p1, v0

    goto :goto_4

    :cond_a
    move p1, p5

    :goto_4
    if-eqz p1, :cond_b

    iget p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    if-eqz p1, :cond_c

    :cond_b
    move p5, v0

    :cond_c
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p0, p5}, Landroid/widget/HorizontalScrollView;->setClipToOutline(Z)V

    return-void
.end method
