.class public final Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;
.super Lcom/android/wm/shell/bubbles/animation/OneTimeEndListener;
.source "PhysicsAnimationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->animateValueForChild(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroid/view/View;FFJFF[Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$afterCallbacks:[Ljava/lang/Runnable;


# direct methods
.method public constructor <init>([Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;->val$afterCallbacks:[Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/animation/OneTimeEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p1, p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$4;->val$afterCallbacks:[Ljava/lang/Runnable;

    array-length p1, p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object p3, p0, p2

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
