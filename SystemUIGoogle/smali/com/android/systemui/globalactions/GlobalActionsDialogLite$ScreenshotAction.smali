.class Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;
.source "GlobalActionsDialogLite.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialogLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenshotAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    const v0, 0x108052a

    const v1, 0x10403c7

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;II)V

    return-void
.end method


# virtual methods
.method is2ButtonNavigationEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->access$1100(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0090

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPress()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->access$1200(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction$1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction;)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->access$1400(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public shouldShow()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction;->is2ButtonNavigationEnabled()Z

    move-result p0

    return p0
.end method

.method public showBeforeProvisioning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showDuringKeyguard()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
