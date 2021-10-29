.class Lcom/android/server/hdmi/HdmiControlShellCommand$1;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiControlShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlShellCommand;-><init>(Landroid/hardware/hdmi/IHdmiControlService$Stub;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlShellCommand;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlShellCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand$1;->this$0:Lcom/android/server/hdmi/HdmiControlShellCommand;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand$1;->this$0:Lcom/android/server/hdmi/HdmiControlShellCommand;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " done ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlShellCommand$1;->this$0:Lcom/android/server/hdmi/HdmiControlShellCommand;

    invoke-static {v2, p1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->access$000(Lcom/android/server/hdmi/HdmiControlShellCommand;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand$1;->this$0:Lcom/android/server/hdmi/HdmiControlShellCommand;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand$1;->this$0:Lcom/android/server/hdmi/HdmiControlShellCommand;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
