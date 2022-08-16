.class public final Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;
.super Ljava/lang/Object;
.source "PhysicsAnimator.kt"

# interfaces
.implements Lcom/android/wm/shell/animation/PhysicsAnimator$EndListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/wm/shell/animation/PhysicsAnimator$EndListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPhysicsAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhysicsAnimator.kt\ncom/android/wm/shell/animation/PhysicsAnimator$startInternal$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1064:1\n1#2:1065\n*E\n"
.end annotation


# instance fields
.field public final synthetic $animatedProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $flingMax:F

.field public final synthetic $flingMin:F

.field public final synthetic $springConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

.field public final synthetic this$0:Lcom/android/wm/shell/animation/PhysicsAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;Lcom/android/wm/shell/animation/PhysicsAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Ljava/lang/Object;",
            ">;FF",
            "Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;",
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$animatedProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iput p2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$flingMin:F

    iput p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$flingMax:F

    iput-object p4, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$springConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    iput-object p5, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->this$0:Lcom/android/wm/shell/animation/PhysicsAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;ZZFF)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$animatedProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    if-eqz p3, :cond_d

    if-eqz p4, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-lez p2, :cond_1

    move p2, p4

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$flingMin:F

    cmpg-float v2, v1, p5

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$flingMax:F

    cmpg-float v2, p5, v2

    if-gtz v2, :cond_2

    move v2, p4

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    xor-int/2addr v2, p4

    if-nez p2, :cond_3

    if-eqz v2, :cond_d

    :cond_3
    iget-object v3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$springConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    iput p6, v3, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    iget v4, v3, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    sget-object v5, Lcom/android/wm/shell/animation/PhysicsAnimatorKt;->animators:Ljava/util/WeakHashMap;

    const v5, -0x800001

    cmpg-float v4, v4, v5

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move p4, v0

    :goto_2
    if-eqz p4, :cond_8

    if-eqz p2, :cond_6

    cmpg-float p2, p6, p3

    if-gez p2, :cond_5

    goto :goto_3

    :cond_5
    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$flingMax:F

    :goto_3
    iput v1, v3, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    goto :goto_5

    :cond_6
    if-eqz v2, :cond_8

    cmpg-float p2, p5, v1

    if-gez p2, :cond_7

    goto :goto_4

    :cond_7
    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$flingMax:F

    :goto_4
    iput v1, v3, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    :cond_8
    :goto_5
    iget-object p2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->this$0:Lcom/android/wm/shell/animation/PhysicsAnimator;

    iget-object p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$animatedProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object p4, p2, Lcom/android/wm/shell/animation/PhysicsAnimator;->springAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p4, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    if-nez p5, :cond_b

    new-instance p5, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p5, p3, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)V

    new-instance p1, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$1;

    invoke-direct {p1, p2, p3}, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$1;-><init>(Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iget-boolean p6, p5, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-nez p6, :cond_a

    iget-object p6, p5, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_9

    iget-object p6, p5, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    new-instance p1, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2;

    invoke-direct {p1, p2, p3, p5}, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2;-><init>(Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/DynamicAnimation;)V

    invoke-virtual {p5, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    invoke-virtual {p4, p3, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Error: Update listeners must be added beforethe animation."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_6
    check-cast p5, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->this$0:Lcom/android/wm/shell/animation/PhysicsAnimator;

    iget-object p1, p1, Lcom/android/wm/shell/animation/PhysicsAnimator;->customScheduler:Landroidx/dynamicanimation/animation/FrameCallbackScheduler;

    if-nez p1, :cond_c

    invoke-virtual {p5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->getScheduler()Landroidx/dynamicanimation/animation/FrameCallbackScheduler;

    move-result-object p1

    :cond_c
    invoke-virtual {p5, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setScheduler(Landroidx/dynamicanimation/animation/FrameCallbackScheduler;)V

    iget-object p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;->$springConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {p0, p5}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->applyToAnimation$frameworks__base__libs__WindowManager__Shell__android_common__WindowManager_Shell(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    invoke-virtual {p5}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_d
    :goto_7
    return-void
.end method
