.class public final synthetic Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/ComponentCallbacks;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ComponentCallbacks;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda2;->f$0:Landroid/content/ComponentCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget p1, p0, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda2;->f$0:Landroid/content/ComponentCallbacks;

    check-cast p0, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-int/2addr p7, p9

    sub-int/2addr p3, p5

    if-eq p7, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    iget p2, p0, Lcom/android/systemui/qs/QSFragment;->mLastPanelFraction:F

    iget p3, p0, Lcom/android/systemui/qs/QSFragment;->mLastHeaderTranslation:F

    iget p4, p0, Lcom/android/systemui/qs/QSFragment;->mSquishinessFraction:F

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/QSFragment;->setQsExpansion(FFFF)V

    :cond_1
    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda2;->f$0:Landroid/content/ComponentCallbacks;

    check-cast p0, Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewRunnable:Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda1;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMirrorViewRunnable:Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda1;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
