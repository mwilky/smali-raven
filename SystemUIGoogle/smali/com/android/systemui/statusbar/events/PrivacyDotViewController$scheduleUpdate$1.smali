.class public final Lcom/android/systemui/statusbar/events/PrivacyDotViewController$scheduleUpdate$1;
.super Ljava/lang/Object;
.source "PrivacyDotViewController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$scheduleUpdate$1;->this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$scheduleUpdate$1;->this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3fff

    invoke-static/range {v2 .. v17}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;I)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    const-string/jumbo v1, "resolveState "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/events/ViewState;->viewInitialized:Z

    if-nez v1, :cond_0

    goto/16 :goto_14

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_14

    :cond_1
    iget v1, v2, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    iget-object v3, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    iget v3, v3, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    const/4 v4, 0x3

    const-string v5, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v1, v3, :cond_c

    iget v3, v2, Lcom/android/systemui/statusbar/events/ViewState;->paddingTop:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getViews()Lkotlin/sequences/Sequence;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9, v6, v3, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cornerForView(Landroid/view/View;)I

    move-result v10

    sub-int/2addr v10, v1

    if-gez v10, :cond_2

    add-int/lit8 v10, v10, 0x4

    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    if-eqz v11, :cond_b

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    const-string v12, "Not a corner"

    const/4 v13, 0x2

    if-eqz v10, :cond_6

    if-eq v10, v7, :cond_5

    if-eq v10, v13, :cond_4

    if-ne v10, v4, :cond_3

    const/16 v14, 0x53

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v14, 0x55

    goto :goto_1

    :cond_5
    const/16 v14, 0x35

    goto :goto_1

    :cond_6
    const/16 v14, 0x33

    :goto_1
    iput v14, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v11, 0x7f0b050a

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    if-eqz v9, :cond_a

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v11, 0x13

    const/16 v14, 0x15

    if-eqz v10, :cond_8

    if-eq v10, v7, :cond_9

    if-eq v10, v13, :cond_9

    if-ne v10, v4, :cond_7

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_2
    move v11, v14

    :cond_9
    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    iget v3, v2, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    iget v8, v1, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    if-ne v3, v8, :cond_e

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/events/ViewState;->layoutRtl:Z

    iget-boolean v8, v1, Lcom/android/systemui/statusbar/events/ViewState;->layoutRtl:Z

    if-ne v3, v8, :cond_e

    iget-object v3, v2, Lcom/android/systemui/statusbar/events/ViewState;->portraitRect:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/systemui/statusbar/events/ViewState;->portraitRect:Landroid/graphics/Rect;

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v2, Lcom/android/systemui/statusbar/events/ViewState;->landscapeRect:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/systemui/statusbar/events/ViewState;->landscapeRect:Landroid/graphics/Rect;

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v2, Lcom/android/systemui/statusbar/events/ViewState;->upsideDownRect:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/systemui/statusbar/events/ViewState;->upsideDownRect:Landroid/graphics/Rect;

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v2, Lcom/android/systemui/statusbar/events/ViewState;->seascapeRect:Landroid/graphics/Rect;

    iget-object v1, v1, Lcom/android/systemui/statusbar/events/ViewState;->seascapeRect:Landroid/graphics/Rect;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3

    :cond_d
    move v1, v6

    goto :goto_4

    :cond_e
    :goto_3
    move v1, v7

    :goto_4
    const/4 v3, 0x0

    if-eqz v1, :cond_26

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/events/ViewState;->layoutRtl:Z

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    iget-object v9, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-nez v9, :cond_f

    move-object v9, v3

    :cond_f
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v9, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-nez v9, :cond_10

    move-object v9, v3

    :cond_10
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jdk7/AutoCloseableKt;->getExactRotation(Landroid/content/Context;)I

    move-result v9

    if-eq v9, v7, :cond_11

    if-eq v9, v4, :cond_11

    iget v4, v8, Landroid/graphics/Point;->x:I

    iget v8, v8, Landroid/graphics/Point;->y:I

    goto :goto_5

    :cond_11
    iget v4, v8, Landroid/graphics/Point;->y:I

    iget v8, v8, Landroid/graphics/Point;->x:I

    :goto_5
    iget-object v9, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-nez v9, :cond_12

    move-object v9, v3

    :cond_12
    invoke-virtual {v0, v9, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->activeRotationForCorner(Landroid/view/View;Z)I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/android/systemui/statusbar/events/ViewState;->contentRectForRotation(I)Landroid/graphics/Rect;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-nez v10, :cond_13

    move-object v10, v3

    :cond_13
    iget v11, v2, Lcom/android/systemui/statusbar/events/ViewState;->paddingTop:I

    invoke-virtual {v10, v6, v11, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v10, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-nez v10, :cond_14

    move-object v10, v3

    :cond_14
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-eqz v10, :cond_25

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz v1, :cond_15

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iput v9, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_6

    :cond_15
    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v9, v8, v9

    iput v9, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_6
    iget-object v9, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-nez v9, :cond_16

    move-object v9, v3

    :cond_16
    invoke-virtual {v0, v9, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->activeRotationForCorner(Landroid/view/View;Z)I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/android/systemui/statusbar/events/ViewState;->contentRectForRotation(I)Landroid/graphics/Rect;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-nez v10, :cond_17

    move-object v10, v3

    :cond_17
    iget v11, v2, Lcom/android/systemui/statusbar/events/ViewState;->paddingTop:I

    invoke-virtual {v10, v6, v11, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v10, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-nez v10, :cond_18

    move-object v10, v3

    :cond_18
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-eqz v10, :cond_24

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz v1, :cond_19

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iput v9, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_7

    :cond_19
    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v9, v4, v9

    iput v9, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_7
    iget-object v9, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-nez v9, :cond_1a

    move-object v9, v3

    :cond_1a
    invoke-virtual {v0, v9, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->activeRotationForCorner(Landroid/view/View;Z)I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/android/systemui/statusbar/events/ViewState;->contentRectForRotation(I)Landroid/graphics/Rect;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-nez v10, :cond_1b

    move-object v10, v3

    :cond_1b
    iget v11, v2, Lcom/android/systemui/statusbar/events/ViewState;->paddingTop:I

    invoke-virtual {v10, v6, v11, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v10, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-nez v10, :cond_1c

    move-object v10, v3

    :cond_1c
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-eqz v10, :cond_23

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz v1, :cond_1d

    iget v8, v9, Landroid/graphics/Rect;->left:I

    iput v8, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_8

    :cond_1d
    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    iput v8, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_8
    iget-object v8, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-nez v8, :cond_1e

    move-object v8, v3

    :cond_1e
    invoke-virtual {v0, v8, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->activeRotationForCorner(Landroid/view/View;Z)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/events/ViewState;->contentRectForRotation(I)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-nez v9, :cond_1f

    move-object v9, v3

    :cond_1f
    iget v10, v2, Lcom/android/systemui/statusbar/events/ViewState;->paddingTop:I

    invoke-virtual {v9, v6, v10, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v9, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-nez v9, :cond_20

    move-object v9, v3

    :cond_20
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    if-eqz v9, :cond_22

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz v1, :cond_21

    iget v1, v8, Landroid/graphics/Rect;->left:I

    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_9

    :cond_21
    iget v1, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v1

    iput v4, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_9
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getViews()Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    goto :goto_a

    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    iget-object v1, v2, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    iget-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    iget-object v4, v4, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-nez v1, :cond_2c

    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    if-nez v1, :cond_27

    goto :goto_b

    :cond_27
    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_b
    iget-object v1, v2, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    if-nez v1, :cond_28

    goto :goto_c

    :cond_28
    iget-object v3, v2, Lcom/android/systemui/statusbar/events/ViewState;->contentDescription:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_c
    iget-object v1, v2, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/events/ViewState;->systemPrivacyEventIsActive:Z

    if-eqz v3, :cond_29

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/events/ViewState;->shadeExpanded:Z

    if-nez v3, :cond_29

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/events/ViewState;->qsExpanded:Z

    if-nez v3, :cond_29

    move v3, v7

    goto :goto_d

    :cond_29
    move v3, v6

    :goto_d
    if-eqz v3, :cond_2e

    iget-object v3, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->showingListener:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$ShowingListener;

    if-nez v3, :cond_2a

    goto :goto_e

    :cond_2a
    check-cast v3, Lcom/android/systemui/ScreenDecorations$2;

    invoke-virtual {v3, v1}, Lcom/android/systemui/ScreenDecorations$2;->onPrivacyDotShown(Landroid/view/View;)V

    :goto_e
    if-nez v1, :cond_2b

    goto :goto_f

    :cond_2b
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v8, 0x12c

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_f

    :cond_2c
    iget-object v1, v2, Lcom/android/systemui/statusbar/events/ViewState;->contentDescription:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/events/ViewState;->contentDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, v2, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    if-nez v1, :cond_2d

    goto :goto_f

    :cond_2d
    iget-object v3, v2, Lcom/android/systemui/statusbar/events/ViewState;->contentDescription:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2e
    :goto_f
    iget-boolean v1, v2, Lcom/android/systemui/statusbar/events/ViewState;->systemPrivacyEventIsActive:Z

    if-eqz v1, :cond_2f

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/events/ViewState;->shadeExpanded:Z

    if-nez v1, :cond_2f

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/events/ViewState;->qsExpanded:Z

    if-nez v1, :cond_2f

    move v1, v7

    goto :goto_10

    :cond_2f
    move v1, v6

    :goto_10
    iget-object v3, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    iget-boolean v8, v3, Lcom/android/systemui/statusbar/events/ViewState;->systemPrivacyEventIsActive:Z

    if-eqz v8, :cond_30

    iget-boolean v8, v3, Lcom/android/systemui/statusbar/events/ViewState;->shadeExpanded:Z

    if-nez v8, :cond_30

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/events/ViewState;->qsExpanded:Z

    if-nez v3, :cond_30

    goto :goto_11

    :cond_30
    move v7, v6

    :goto_11
    if-eq v1, v7, :cond_33

    const-wide/16 v7, 0xa0

    if-eqz v1, :cond_32

    iget-object v3, v2, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    if-eqz v3, :cond_32

    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->showingListener:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$ShowingListener;

    if-nez v1, :cond_31

    goto :goto_12

    :cond_31
    check-cast v1, Lcom/android/systemui/ScreenDecorations$2;

    invoke-virtual {v1, v3}, Lcom/android/systemui/ScreenDecorations$2;->onPrivacyDotShown(Landroid/view/View;)V

    :goto_12
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v3, Lcom/android/systemui/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_13

    :cond_32
    if-nez v1, :cond_33

    iget-object v1, v2, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$hideDotView$1;

    invoke-direct {v4, v1, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$hideDotView$1;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_33
    :goto_13
    iput-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    :goto_14
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
