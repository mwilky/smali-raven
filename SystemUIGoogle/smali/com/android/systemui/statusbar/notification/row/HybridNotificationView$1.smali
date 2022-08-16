.class public final Lcom/android/systemui/statusbar/notification/row/HybridNotificationView$1;
.super Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
.source "HybridNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;-><init>()V

    return-void
.end method


# virtual methods
.method public final transformFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/android/systemui/statusbar/TransformableView;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTextView:Landroid/widget/TextView;

    invoke-static {p0, p3, v0}, Landroidx/leanback/R$style;->fadeIn(Landroid/view/View;FZ)V

    if-eqz p2, :cond_0

    const/16 p0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p0, v1, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    :cond_0
    return v0
.end method

.method public final transformTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/android/systemui/statusbar/TransformableView;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTextView:Landroid/widget/TextView;

    invoke-static {p0, p3, v0}, Landroidx/leanback/R$style;->fadeOut(Landroid/view/View;FZ)V

    if-eqz p2, :cond_0

    const/16 p0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p0, v1, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    :cond_0
    return v0
.end method
