.class public final Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$2;
.super Ljava/lang/Object;
.source "ClipboardOverlayController.java"

# interfaces
.implements Landroid/view/ViewRootImpl$ActivityConfigCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$2;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;I)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$2;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    iget-object p1, p1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object p2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$2;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    iget v0, p2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mOrientation:I

    if-eq p1, v0, :cond_0

    iget-object p1, p2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_DISMISSED_OTHER:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    invoke-interface {p1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$2;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    invoke-static {p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->-$$Nest$mhideImmediate(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;)V

    :cond_0
    return-void
.end method

.method public final requestCompatCameraControl(ZZLandroid/app/ICompatCameraControlCallback;)V
    .locals 0

    const-string p0, "ClipboardOverlayCtrlr"

    const-string/jumbo p1, "unexpected requestCompatCameraControl call"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
