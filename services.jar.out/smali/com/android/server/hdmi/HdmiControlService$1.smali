.class Lcom/android/server/hdmi/HdmiControlService$1;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$1;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method
