.class Lcom/android/systemui/screenshot/LongScreenshotActivity$1;
.super Ljava/lang/Object;
.source "LongScreenshotActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/LongScreenshotActivity;->onLongScreenshotReceived(Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

.field final synthetic val$bottomFraction:F

.field final synthetic val$topFraction:F


# direct methods
.method public static synthetic $r8$lambda$0pLAaD5zM9Vsmh-JUuaGTwE8CHc(Lcom/android/systemui/screenshot/LongScreenshotActivity$1;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->lambda$onPreDraw$1(FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$FzbI6_Z0dM2xU25QZ5103XaY_cw(Lcom/android/systemui/screenshot/LongScreenshotActivity$1;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->lambda$onPreDraw$0(FF)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/screenshot/LongScreenshotActivity;FF)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    iput p2, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->val$topFraction:F

    iput p3, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->val$bottomFraction:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onPreDraw$0(FF)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    invoke-static {v0}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->access$300(Lcom/android/systemui/screenshot/LongScreenshotActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    invoke-static {v0}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->access$400(Lcom/android/systemui/screenshot/LongScreenshotActivity;)Lcom/android/systemui/screenshot/CropView;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/screenshot/CropView$CropBoundary;->TOP:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/screenshot/CropView;->setBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;F)V

    iget-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    invoke-static {p1}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->access$400(Lcom/android/systemui/screenshot/LongScreenshotActivity;)Lcom/android/systemui/screenshot/CropView;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->BOTTOM:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/screenshot/CropView;->setBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;F)V

    iget-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    invoke-static {p1}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->access$400(Lcom/android/systemui/screenshot/LongScreenshotActivity;)Lcom/android/systemui/screenshot/CropView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/CropView;->animateEntrance()V

    iget-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    invoke-static {p1}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->access$400(Lcom/android/systemui/screenshot/LongScreenshotActivity;)Lcom/android/systemui/screenshot/CropView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->access$500(Lcom/android/systemui/screenshot/LongScreenshotActivity;Z)V

    return-void
.end method

.method private synthetic lambda$onPreDraw$1(FF)V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    invoke-static {v1}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->access$000(Lcom/android/systemui/screenshot/LongScreenshotActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    invoke-static {v1}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->access$200(Lcom/android/systemui/screenshot/LongScreenshotActivity;)Lcom/android/systemui/screenshot/LongScreenshotData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/LongScreenshotData;->takeTransitionDestinationCallback()Lcom/android/systemui/screenshot/ScreenshotController$TransitionDestination;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/screenshot/LongScreenshotActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/systemui/screenshot/LongScreenshotActivity$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/LongScreenshotActivity$1;FF)V

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/screenshot/ScreenshotController$TransitionDestination;->setTransitionDestination(Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    invoke-static {v0}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->access$000(Lcom/android/systemui/screenshot/LongScreenshotActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    invoke-static {v0}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->access$100(Lcom/android/systemui/screenshot/LongScreenshotActivity;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    invoke-static {v0}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->access$000(Lcom/android/systemui/screenshot/LongScreenshotActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->val$topFraction:F

    iget v2, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->val$bottomFraction:F

    new-instance v3, Lcom/android/systemui/screenshot/LongScreenshotActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/systemui/screenshot/LongScreenshotActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/LongScreenshotActivity$1;FF)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method
