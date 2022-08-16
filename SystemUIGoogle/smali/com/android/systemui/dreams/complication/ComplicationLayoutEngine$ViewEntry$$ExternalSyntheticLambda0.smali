.class public final synthetic Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

.field public final synthetic f$4:Landroid/view/View;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;ZILandroidx/constraintlayout/widget/Constraints$LayoutParams;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;

    iput-boolean p2, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$1:Z

    iput p3, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$3:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput-object p5, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$4:Landroid/view/View;

    iput-boolean p6, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$5:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;

    iget-boolean v1, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$1:Z

    iget v2, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$3:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$4:Landroid/view/View;

    iget-boolean p0, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$5:Z

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v5, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq p1, v8, :cond_c

    if-eq p1, v7, :cond_8

    if-eq p1, v6, :cond_4

    if-eq p1, v5, :cond_0

    goto/16 :goto_8

    :cond_0
    if-nez v1, :cond_2

    if-eq v2, v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    goto :goto_1

    :cond_2
    :goto_0
    iput v9, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    :goto_1
    if-eqz p0, :cond_10

    if-eq v2, v8, :cond_3

    if-ne v2, v7, :cond_10

    :cond_3
    const p0, 0x7f0b019d

    iput p0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    goto :goto_8

    :cond_4
    if-nez v1, :cond_6

    if-eq v2, v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    goto :goto_3

    :cond_6
    :goto_2
    iput v9, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    :goto_3
    if-eqz p0, :cond_10

    if-eq v2, v7, :cond_7

    if-ne v2, v8, :cond_10

    :cond_7
    const p0, 0x7f0b019e

    iput p0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    goto :goto_8

    :cond_8
    if-nez v1, :cond_a

    if-eq v2, v8, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    goto :goto_5

    :cond_a
    :goto_4
    iput v9, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    :goto_5
    if-eqz p0, :cond_10

    if-eq v2, v5, :cond_b

    if-ne v2, v6, :cond_10

    :cond_b
    const p0, 0x7f0b019c

    iput p0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    goto :goto_8

    :cond_c
    if-nez v1, :cond_e

    if-eq v2, v7, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    goto :goto_7

    :cond_e
    :goto_6
    iput v9, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    :goto_7
    if-eqz p0, :cond_10

    if-eq v2, v5, :cond_f

    if-ne v2, v6, :cond_10

    :cond_f
    const p0, 0x7f0b019f

    iput p0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    :cond_10
    :goto_8
    if-nez v1, :cond_15

    if-eq v2, v8, :cond_14

    if-eq v2, v7, :cond_13

    if-eq v2, v6, :cond_12

    if-eq v2, v5, :cond_11

    goto :goto_9

    :cond_11
    iget p0, v0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;->mMargin:I

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_9

    :cond_12
    iget p0, v0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;->mMargin:I

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_9

    :cond_13
    iget p0, v0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;->mMargin:I

    invoke-virtual {v3, v9, p0, v9, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_9

    :cond_14
    iget p0, v0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;->mMargin:I

    invoke-virtual {v3, v9, v9, v9, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_15
    :goto_9
    return-void
.end method
