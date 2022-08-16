.class public final Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$PositionGroup;
.super Ljava/lang/Object;
.source "ComplicationLayoutEngine.java"

# interfaces
.implements Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup$Parent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionGroup"
.end annotation


# instance fields
.field public final mDirectionGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$PositionGroup;->mDirectionGroups:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final onEntriesChanged()V
    .locals 15

    iget-object v0, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$PositionGroup;->mDirectionGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup;

    iget-object v5, v3, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, v3, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;->compareTo(Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;)I

    move-result v4

    if-lez v4, :cond_0

    :cond_2
    move-object v2, v3

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    goto/16 :goto_5

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$PositionGroup;->mDirectionGroups:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup;

    iget-object v1, v2, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;->mView:Landroid/view/View;

    iget-object v0, v0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v10, v1

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    iget-object v5, v1, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;->mLayoutParams:Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;

    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v3, v6, v5}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    iget-object v12, v1, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;->mLayoutParams:Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;

    iget v8, v12, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;->mDirection:I

    iget-boolean v11, v12, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;->mSnapToGuide:Z

    iget-object v5, v1, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;->mView:Landroid/view/View;

    const/4 v13, 0x1

    if-ne v10, v5, :cond_6

    move v7, v13

    goto :goto_3

    :cond_6
    move v7, v4

    :goto_3
    new-instance v14, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;

    move-object v5, v14

    move-object v6, v1

    move-object v9, v3

    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;ZILandroidx/constraintlayout/widget/Constraints$LayoutParams;Landroid/view/View;Z)V

    :goto_4
    const/16 v5, 0x8

    if-gt v13, v5, :cond_8

    iget v5, v12, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;->mPosition:I

    and-int/2addr v5, v13

    if-ne v5, v13, :cond_7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    :cond_7
    shl-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_8
    iget-object v5, v1, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;->mView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, v1, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;->mView:Landroid/view/View;

    goto :goto_2

    :cond_9
    :goto_5
    return-void
.end method
