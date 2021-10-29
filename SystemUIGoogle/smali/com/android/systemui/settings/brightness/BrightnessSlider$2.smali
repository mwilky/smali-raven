.class Lcom/android/systemui/settings/brightness/BrightnessSlider$2;
.super Ljava/lang/Object;
.source "BrightnessSlider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/brightness/BrightnessSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$100(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$100(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$200(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Z

    move-result p0

    const/4 p3, 0x0

    invoke-interface {p1, p0, p2, p3}, Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;->onChanged(ZIZ)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$202(Lcom/android/systemui/settings/brightness/BrightnessSlider;Z)Z

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$100(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$100(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$200(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-virtual {v1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->getValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;->onChanged(ZIZ)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$300(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$300(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->showMirror()V

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$300(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$400(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->setLocationAndSize(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$202(Lcom/android/systemui/settings/brightness/BrightnessSlider;Z)Z

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$100(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$100(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$200(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-virtual {v1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->getValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;->onChanged(ZIZ)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$300(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$300(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->hideMirror()V

    :cond_1
    return-void
.end method
