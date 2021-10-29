.class Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1$1;
.super Ljava/lang/Object;
.source "ShortcutBarView.java"

# interfaces
.implements Lcom/android/wm/shell/animation/PhysicsAnimator$EndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->onUp(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/wm/shell/animation/PhysicsAnimator$EndListener<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1$1;->this$1:Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;ZZFFZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-",
            "Landroid/view/View;",
            ">;ZZFFZ)V"
        }
    .end annotation

    if-eqz p4, :cond_0

    return-void

    :cond_0
    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-ne p2, p1, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1$1;->this$1:Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$600(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method

.method public bridge synthetic onAnimationEnd(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;ZZFFZ)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1$1;->onAnimationEnd(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;ZZFFZ)V

    return-void
.end method
