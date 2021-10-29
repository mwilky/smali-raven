.class public final synthetic Lcom/google/android/systemui/gamedashboard/RevealButton$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/gamedashboard/RevealButton;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/gamedashboard/RevealButton;ILandroid/graphics/Rect;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/RevealButton$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/gamedashboard/RevealButton;

    iput p2, p0, Lcom/google/android/systemui/gamedashboard/RevealButton$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/google/android/systemui/gamedashboard/RevealButton$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    iput p4, p0, Lcom/google/android/systemui/gamedashboard/RevealButton$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/RevealButton$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/gamedashboard/RevealButton;

    iget v1, p0, Lcom/google/android/systemui/gamedashboard/RevealButton$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/RevealButton$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    iget p0, p0, Lcom/google/android/systemui/gamedashboard/RevealButton$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/google/android/systemui/gamedashboard/RevealButton;->$r8$lambda$PLizT1-tv1L203jH4W9Zh1hKQJY(Lcom/google/android/systemui/gamedashboard/RevealButton;ILandroid/graphics/Rect;ILandroid/animation/ValueAnimator;)V

    return-void
.end method
