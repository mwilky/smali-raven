.class public final Lcom/android/systemui/media/MediaViewHolder;
.super Ljava/lang/Object;
.source "MediaViewHolder.kt"


# static fields
.field public static final controlsIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final expandedBottomActionIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final genericButtonIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final action0:Landroid/widget/ImageButton;

.field public final action1:Landroid/widget/ImageButton;

.field public final action2:Landroid/widget/ImageButton;

.field public final action3:Landroid/widget/ImageButton;

.field public final action4:Landroid/widget/ImageButton;

.field public final actionNext:Landroid/widget/ImageButton;

.field public final actionPlayPause:Landroid/widget/ImageButton;

.field public final actionPrev:Landroid/widget/ImageButton;

.field public final albumView:Landroid/widget/ImageView;

.field public final appIcon:Landroid/widget/ImageView;

.field public final artistText:Landroid/widget/TextView;

.field public final gutsViewHolder:Lcom/android/systemui/media/GutsViewHolder;

.field public final player:Lcom/android/systemui/util/animation/TransitionLayout;

.field public final scrubbingElapsedTimeView:Landroid/widget/TextView;

.field public final scrubbingTotalTimeView:Landroid/widget/TextView;

.field public final seamless:Landroid/view/ViewGroup;

.field public final seamlessButton:Landroid/view/View;

.field public final seamlessIcon:Landroid/widget/ImageView;

.field public final seamlessText:Landroid/widget/TextView;

.field public final seekBar:Landroid/widget/SeekBar;

.field public final titleText:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f0b02ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v3, 0x7f0b00b0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const v3, 0x7f0b02ee

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v0, v5

    const v3, 0x7f0b02e9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v0, v6

    const v3, 0x7f0b03fa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x4

    aput-object v3, v0, v7

    const v3, 0x7f0b03f6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x5

    aput-object v3, v0, v8

    const v3, 0x7f0b0050

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v9, 0x6

    aput-object v3, v0, v9

    const v3, 0x7f0b004f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v10, 0x7

    aput-object v3, v0, v10

    const v11, 0x7f0b0051

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0x8

    aput-object v11, v0, v12

    const v13, 0x7f0b0049

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v14, 0x9

    aput-object v13, v0, v14

    const v15, 0x7f0b004a

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0xa

    aput-object v15, v0, v16

    const v16, 0x7f0b004b

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0xb

    aput-object v16, v0, v17

    const v17, 0x7f0b004c

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0xc

    aput-object v17, v0, v18

    const v18, 0x7f0b004d

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0xd

    aput-object v18, v0, v19

    const/16 v19, 0xe

    aput-object v1, v0, v19

    const v1, 0x7f0b03f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v19, 0xf

    aput-object v1, v0, v19

    const v19, 0x7f0b03f9

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x10

    aput-object v19, v0, v20

    invoke-static {v0}, Landroidx/preference/R$drawable;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/MediaViewHolder;->controlsIds:Ljava/util/Set;

    new-array v0, v8, [Ljava/lang/Integer;

    aput-object v13, v0, v2

    aput-object v15, v0, v4

    aput-object v16, v0, v5

    aput-object v17, v0, v6

    aput-object v18, v0, v7

    invoke-static {v0}, Landroidx/preference/R$drawable;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/MediaViewHolder;->genericButtonIds:Ljava/util/Set;

    new-array v0, v14, [Ljava/lang/Integer;

    aput-object v11, v0, v2

    aput-object v3, v0, v4

    aput-object v13, v0, v5

    aput-object v15, v0, v6

    aput-object v16, v0, v7

    aput-object v17, v0, v8

    aput-object v18, v0, v9

    aput-object v1, v0, v10

    aput-object v19, v0, v12

    invoke-static {v0}, Landroidx/preference/R$drawable;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/MediaViewHolder;->expandedBottomActionIds:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/util/animation/TransitionLayout;

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    const v0, 0x7f0b008b

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewHolder;->albumView:Landroid/widget/ImageView;

    const v0, 0x7f0b02ff

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewHolder;->appIcon:Landroid/widget/ImageView;

    const v0, 0x7f0b02ee

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewHolder;->titleText:Landroid/widget/TextView;

    const v0, 0x7f0b02e9

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewHolder;->artistText:Landroid/widget/TextView;

    const v0, 0x7f0b03fa

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewHolder;->seamless:Landroid/view/ViewGroup;

    const v0, 0x7f0b03fc

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewHolder;->seamlessIcon:Landroid/widget/ImageView;

    const v0, 0x7f0b03fd

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewHolder;->seamlessText:Landroid/widget/TextView;

    const v0, 0x7f0b03fb

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewHolder;->seamlessButton:Landroid/view/View;

    const v0, 0x7f0b03f6

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    const v0, 0x7f0b03f8

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewHolder;->scrubbingElapsedTimeView:Landroid/widget/TextView;

    const v0, 0x7f0b03f9

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewHolder;->scrubbingTotalTimeView:Landroid/widget/TextView;

    new-instance v0, Lcom/android/systemui/media/GutsViewHolder;

    invoke-direct {v0, p1}, Lcom/android/systemui/media/GutsViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewHolder;->gutsViewHolder:Lcom/android/systemui/media/GutsViewHolder;

    const v0, 0x7f0b0050

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewHolder;->actionPlayPause:Landroid/widget/ImageButton;

    const v0, 0x7f0b004f

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewHolder;->actionNext:Landroid/widget/ImageButton;

    const v0, 0x7f0b0051

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewHolder;->actionPrev:Landroid/widget/ImageButton;

    const v0, 0x7f0b0049

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewHolder;->action0:Landroid/widget/ImageButton;

    const v0, 0x7f0b004a

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewHolder;->action1:Landroid/widget/ImageButton;

    const v0, 0x7f0b004b

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewHolder;->action2:Landroid/widget/ImageButton;

    const v0, 0x7f0b004c

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewHolder;->action3:Landroid/widget/ImageButton;

    const v0, 0x7f0b004d

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewHolder;->action4:Landroid/widget/ImageButton;

    const p0, 0x7f0b03e8

    invoke-virtual {p1, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/Barrier;

    return-void
.end method


# virtual methods
.method public final getAction(I)Landroid/widget/ImageButton;
    .locals 1

    const v0, 0x7f0b0050

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/MediaViewHolder;->actionPlayPause:Landroid/widget/ImageButton;

    goto :goto_0

    :cond_0
    const v0, 0x7f0b004f

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/MediaViewHolder;->actionNext:Landroid/widget/ImageButton;

    goto :goto_0

    :cond_1
    const v0, 0x7f0b0051

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/media/MediaViewHolder;->actionPrev:Landroid/widget/ImageButton;

    goto :goto_0

    :cond_2
    const v0, 0x7f0b0049

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/media/MediaViewHolder;->action0:Landroid/widget/ImageButton;

    goto :goto_0

    :cond_3
    const v0, 0x7f0b004a

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/media/MediaViewHolder;->action1:Landroid/widget/ImageButton;

    goto :goto_0

    :cond_4
    const v0, 0x7f0b004b

    if-ne p1, v0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/media/MediaViewHolder;->action2:Landroid/widget/ImageButton;

    goto :goto_0

    :cond_5
    const v0, 0x7f0b004c

    if-ne p1, v0, :cond_6

    iget-object p0, p0, Lcom/android/systemui/media/MediaViewHolder;->action3:Landroid/widget/ImageButton;

    goto :goto_0

    :cond_6
    const v0, 0x7f0b004d

    if-ne p1, v0, :cond_7

    iget-object p0, p0, Lcom/android/systemui/media/MediaViewHolder;->action4:Landroid/widget/ImageButton;

    :goto_0
    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
