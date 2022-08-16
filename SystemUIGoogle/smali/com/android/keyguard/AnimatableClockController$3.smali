.class public final Lcom/android/keyguard/AnimatableClockController$3;
.super Ljava/lang/Object;
.source "AnimatableClockController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/AnimatableClockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/AnimatableClockController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/AnimatableClockController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/AnimatableClockController$3;->this$0:Lcom/android/keyguard/AnimatableClockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDozeAmountChanged(FF)V
    .locals 5

    iget-object p0, p0, Lcom/android/keyguard/AnimatableClockController$3;->this$0:Lcom/android/keyguard/AnimatableClockController;

    iget p2, p0, Lcom/android/keyguard/AnimatableClockController;->mDozeAmount:F

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-nez v1, :cond_0

    cmpl-float v1, p1, v3

    if-eqz v1, :cond_1

    :cond_0
    cmpl-float v1, p2, v3

    if-nez v1, :cond_2

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    cmpl-float p2, p1, p2

    if-lez p2, :cond_3

    move v2, v4

    :cond_3
    iput p1, p0, Lcom/android/keyguard/AnimatableClockController;->mDozeAmount:F

    iget-boolean p1, p0, Lcom/android/keyguard/AnimatableClockController;->mIsDozing:Z

    if-eq p1, v2, :cond_4

    iput-boolean v2, p0, Lcom/android/keyguard/AnimatableClockController;->mIsDozing:Z

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/AnimatableClockView;

    xor-int/lit8 p1, v0, 0x1

    invoke-virtual {p0, v2, p1}, Lcom/android/keyguard/AnimatableClockView;->animateDoze(ZZ)V

    :cond_4
    return-void
.end method
