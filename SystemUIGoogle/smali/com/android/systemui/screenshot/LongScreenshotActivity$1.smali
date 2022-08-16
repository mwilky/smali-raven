.class public final Lcom/android/systemui/screenshot/LongScreenshotActivity$1;
.super Ljava/lang/Object;
.source "LongScreenshotActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

.field public final synthetic val$bottomFraction:F

.field public final synthetic val$topFraction:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/LongScreenshotActivity;FF)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    iput p2, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->val$topFraction:F

    iput p3, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->val$bottomFraction:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    iget-object v0, v0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mEnterTransitionView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->updateImageDimensions()V

    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    iget-object v0, v0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mEnterTransitionView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->val$topFraction:F

    iget v2, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->val$bottomFraction:F

    new-instance v3, Lcom/android/systemui/screenshot/LongScreenshotActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/systemui/screenshot/LongScreenshotActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/LongScreenshotActivity$1;FF)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method
