.class public final Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ComplicationLayoutEngine.java"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;

.field public final synthetic val$visibility:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$1;->this$0:Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;

    iput p2, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$1;->val$visibility:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$1;->this$0:Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;

    iget-object p1, p1, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget p0, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$1;->val$visibility:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
