.class Lcom/android/settings/bluetooth/QrCodeScanModeFragment$2;
.super Landroid/os/Handler;
.source "QrCodeScanModeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/QrCodeScanModeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/QrCodeScanModeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment$2;->this$0:Lcom/android/settings/bluetooth/QrCodeScanModeFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    const/16 v3, 0x20

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment$2;->this$0:Lcom/android/settings/bluetooth/QrCodeScanModeFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->-$$Nest$fgetmController(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)Lcom/android/settings/bluetooth/QrCodeScanModeController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment$2;->this$0:Lcom/android/settings/bluetooth/QrCodeScanModeFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->-$$Nest$fgetmSink(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment$2;->this$0:Lcom/android/settings/bluetooth/QrCodeScanModeFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->-$$Nest$fgetmBroadcastMetadata(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment$2;->this$0:Lcom/android/settings/bluetooth/QrCodeScanModeFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->-$$Nest$fgetmIsGroupOp(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/settings/bluetooth/QrCodeScanModeController;->addSource(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment$2;->this$0:Lcom/android/settings/bluetooth/QrCodeScanModeFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->-$$Nest$mupdateSummary(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)V

    iget-object p0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment$2;->this$0:Lcom/android/settings/bluetooth/QrCodeScanModeFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->-$$Nest$fgetmSummary(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment$2;->this$0:Lcom/android/settings/bluetooth/QrCodeScanModeFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->-$$Nest$fgetmErrorMessage(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment$2;->this$0:Lcom/android/settings/bluetooth/QrCodeScanModeFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->-$$Nest$fgetmErrorMessage(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment$2;->this$0:Lcom/android/settings/bluetooth/QrCodeScanModeFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->-$$Nest$fgetmErrorMessage(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment$2;->this$0:Lcom/android/settings/bluetooth/QrCodeScanModeFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->-$$Nest$fgetmErrorMessage(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
