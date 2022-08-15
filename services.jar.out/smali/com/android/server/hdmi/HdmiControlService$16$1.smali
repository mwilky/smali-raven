.class public Lcom/android/server/hdmi/HdmiControlService$16$1;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$16;->onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$16;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService$16;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$16$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$16$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$16;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$16;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(IZ)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$16$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$16;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$16;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(IZ)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$16$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$16;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$16;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmMhlController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$16$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$16;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$16;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mclearLocalDevices(Lcom/android/server/hdmi/HdmiControlService;)V

    return-void
.end method
