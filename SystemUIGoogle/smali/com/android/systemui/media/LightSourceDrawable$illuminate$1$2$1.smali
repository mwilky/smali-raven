.class public final Lcom/android/systemui/media/LightSourceDrawable$illuminate$1$2$1;
.super Ljava/lang/Object;
.source "LightSourceDrawable.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/LightSourceDrawable;->illuminate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/LightSourceDrawable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/LightSourceDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/LightSourceDrawable$illuminate$1$2$1;->this$0:Lcom/android/systemui/media/LightSourceDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/LightSourceDrawable$illuminate$1$2$1;->this$0:Lcom/android/systemui/media/LightSourceDrawable;

    invoke-static {v0}, Lcom/android/systemui/media/LightSourceDrawable;->access$getRippleData$p(Lcom/android/systemui/media/LightSourceDrawable;)Lcom/android/systemui/media/RippleData;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/android/systemui/media/RippleData;->progress:F

    iget-object p0, p0, Lcom/android/systemui/media/LightSourceDrawable$illuminate$1$2$1;->this$0:Lcom/android/systemui/media/LightSourceDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
