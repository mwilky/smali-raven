.class public final Lcom/android/systemui/media/LightSourceDrawable$illuminate$1$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LightSourceDrawable.kt"


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

    iput-object p1, p0, Lcom/android/systemui/media/LightSourceDrawable$illuminate$1$3;->this$0:Lcom/android/systemui/media/LightSourceDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/media/LightSourceDrawable$illuminate$1$3;->this$0:Lcom/android/systemui/media/LightSourceDrawable;

    invoke-static {p1}, Lcom/android/systemui/media/LightSourceDrawable;->access$getRippleData$p(Lcom/android/systemui/media/LightSourceDrawable;)Lcom/android/systemui/media/RippleData;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/systemui/media/RippleData;->progress:F

    iget-object p1, p0, Lcom/android/systemui/media/LightSourceDrawable$illuminate$1$3;->this$0:Lcom/android/systemui/media/LightSourceDrawable;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/media/LightSourceDrawable;->access$setRippleAnimation$p(Lcom/android/systemui/media/LightSourceDrawable;Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/systemui/media/LightSourceDrawable$illuminate$1$3;->this$0:Lcom/android/systemui/media/LightSourceDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
