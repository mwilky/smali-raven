.class public final synthetic Lcom/android/systemui/statusbar/notification/PropertyAnimator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/util/Property;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Property;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$$ExternalSyntheticLambda0;->f$0:Landroid/util/Property;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$$ExternalSyntheticLambda0;->f$0:Landroid/util/Property;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {v0, p0, p1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
