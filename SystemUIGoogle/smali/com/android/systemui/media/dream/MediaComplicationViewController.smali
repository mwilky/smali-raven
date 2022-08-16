.class public final Lcom/android/systemui/media/dream/MediaComplicationViewController;
.super Lcom/android/systemui/util/ViewController;
.source "MediaComplicationViewController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Landroid/widget/FrameLayout;",
        ">;"
    }
.end annotation


# instance fields
.field public final mMediaHost:Lcom/android/systemui/media/MediaHost;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Lcom/android/systemui/media/MediaHost;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/media/dream/MediaComplicationViewController;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    return-void
.end method


# virtual methods
.method public final onInit()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/dream/MediaComplicationViewController;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->setExpansion(F)V

    iget-object v0, p0, Lcom/android/systemui/media/dream/MediaComplicationViewController;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    iget-object v0, v0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-boolean v2, v0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iput-boolean v2, v0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    iget-object v0, v0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/dream/MediaComplicationViewController;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    iget-object v0, v0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    iget-boolean v1, v0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    iput-boolean v2, v0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    iget-object v0, v0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/media/dream/MediaComplicationViewController;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaHost;->init(I)V

    return-void
.end method

.method public final onViewAttached()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/dream/MediaComplicationViewController;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    iget-object v0, v0, Lcom/android/systemui/media/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/android/systemui/media/dream/MediaComplicationViewController;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/android/systemui/media/dream/MediaComplicationViewController;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
