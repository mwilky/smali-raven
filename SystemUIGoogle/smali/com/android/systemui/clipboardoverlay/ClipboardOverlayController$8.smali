.class public final Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$8;
.super Ljava/lang/Object;
.source "ClipboardOverlayController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$8;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWindowAttached()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$8;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mBlockAttach:Z

    return-void
.end method

.method public final onWindowDetached()V
    .locals 0

    return-void
.end method
