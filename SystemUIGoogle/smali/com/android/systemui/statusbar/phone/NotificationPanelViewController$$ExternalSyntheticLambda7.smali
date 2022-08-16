.class public final synthetic Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;IIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda7;->f$1:I

    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda7;->f$2:I

    iput p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda7;->f$3:I

    iput p5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda7;->f$4:I

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda7;->f$5:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda7;->f$1:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda7;->f$2:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda7;->f$3:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda7;->f$4:I

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda7;->f$5:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClippingAnimationEndBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v5, p1}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v1

    float-to-int v5, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClippingAnimationEndBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v1, p1}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v1

    float-to-int v6, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClippingAnimationEndBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v1, p1}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v1

    float-to-int v7, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClippingAnimationEndBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v1, p1}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result p1

    float-to-int p1, p1

    move v1, p0

    move v2, v5

    move v3, v6

    move v4, v7

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->applyQSClippingImmediately(ZIIII)V

    return-void
.end method
