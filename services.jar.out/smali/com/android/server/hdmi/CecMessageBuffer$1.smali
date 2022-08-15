.class public Lcom/android/server/hdmi/CecMessageBuffer$1;
.super Ljava/lang/Object;
.source "CecMessageBuffer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/CecMessageBuffer;->processMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/CecMessageBuffer;

.field public final synthetic val$message:Lcom/android/server/hdmi/HdmiCecMessage;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/CecMessageBuffer;Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/CecMessageBuffer$1;->this$0:Lcom/android/server/hdmi/CecMessageBuffer;

    iput-object p2, p0, Lcom/android/server/hdmi/CecMessageBuffer$1;->val$message:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/CecMessageBuffer$1;->this$0:Lcom/android/server/hdmi/CecMessageBuffer;

    invoke-static {v0}, Lcom/android/server/hdmi/CecMessageBuffer;->-$$Nest$fgetmHdmiControlService(Lcom/android/server/hdmi/CecMessageBuffer;)Lcom/android/server/hdmi/HdmiControlService;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer$1;->val$message:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiControlService;->handleCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)I

    return-void
.end method
