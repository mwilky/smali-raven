.class Lcom/android/settings/accessibility/PreviewSizeSeekBarController$1;
.super Ljava/lang/Object;
.source "PreviewSizeSeekBarController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/PreviewSizeSeekBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/PreviewSizeSeekBarController;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$1;->this$0:Lcom/android/settings/accessibility/PreviewSizeSeekBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$1;->this$0:Lcom/android/settings/accessibility/PreviewSizeSeekBarController;

    invoke-static {p1}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->-$$Nest$fgetmInteractionListener(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;)Lcom/android/settings/accessibility/PreviewSizeSeekBarController$ProgressInteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$ProgressInteractionListener;->notifyPreferenceChanged()V

    iget-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$1;->this$0:Lcom/android/settings/accessibility/PreviewSizeSeekBarController;

    invoke-static {p1}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->-$$Nest$fgetmSeekByTouch(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$1;->this$0:Lcom/android/settings/accessibility/PreviewSizeSeekBarController;

    invoke-static {p1}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->-$$Nest$fgetmInteractionListener(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;)Lcom/android/settings/accessibility/PreviewSizeSeekBarController$ProgressInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$1;->this$0:Lcom/android/settings/accessibility/PreviewSizeSeekBarController;

    invoke-static {p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->-$$Nest$fgetmInteractionListener(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;)Lcom/android/settings/accessibility/PreviewSizeSeekBarController$ProgressInteractionListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$ProgressInteractionListener;->onProgressChanged()V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$1;->this$0:Lcom/android/settings/accessibility/PreviewSizeSeekBarController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->-$$Nest$fputmSeekByTouch(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;Z)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$1;->this$0:Lcom/android/settings/accessibility/PreviewSizeSeekBarController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->-$$Nest$fputmSeekByTouch(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;Z)V

    iget-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$1;->this$0:Lcom/android/settings/accessibility/PreviewSizeSeekBarController;

    invoke-static {p1}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->-$$Nest$fgetmInteractionListener(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;)Lcom/android/settings/accessibility/PreviewSizeSeekBarController$ProgressInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$1;->this$0:Lcom/android/settings/accessibility/PreviewSizeSeekBarController;

    invoke-static {p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->-$$Nest$fgetmInteractionListener(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;)Lcom/android/settings/accessibility/PreviewSizeSeekBarController$ProgressInteractionListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$ProgressInteractionListener;->onEndTrackingTouch()V

    :cond_0
    return-void
.end method
