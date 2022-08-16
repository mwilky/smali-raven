.class public final Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;
.super Ljava/lang/Object;
.source "ComplicationLayoutEngine.java"

# interfaces
.implements Lcom/android/systemui/dreams/complication/Complication$VisibilityController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup;,
        Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$PositionGroup;,
        Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;
    }
.end annotation


# instance fields
.field public final mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/dreams/complication/ComplicationId;",
            "Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final mFadeInDuration:I

.field public final mFadeOutDuration:I

.field public final mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final mMargin:I

.field public final mPositions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$PositionGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final mSession:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

.field public mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;ILcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;->mEntries:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;->mPositions:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput p2, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;->mMargin:I

    iput-object p3, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;->mSession:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    iput p4, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;->mFadeInDuration:I

    iput p5, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;->mFadeOutDuration:I

    return-void
.end method


# virtual methods
.method public final removeComplication(Lcom/android/systemui/dreams/complication/ComplicationId;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;->mEntries:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "could not find id:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ComplicationLayoutEngine"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;->mParent:Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry$Parent;

    check-cast p1, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup;

    invoke-virtual {p1, p0}, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup;->removeEntry(Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;)V

    iget-object p1, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;->mTouchInsetSession:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;->mView:Landroid/view/View;

    iget-object v0, p1, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setVisibility(I)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v1, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;->mFadeInDuration:I

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;->mFadeOutDuration:I

    :goto_2
    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$1;-><init>(Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    return-void
.end method
