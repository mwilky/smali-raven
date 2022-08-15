.class public Lcom/android/server/hdmi/HdmiControlService$BinderService$12;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->setSystemAudioVolume(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field public final synthetic val$maxIndex:I

.field public final synthetic val$newIndex:I

.field public final synthetic val$oldIndex:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->val$oldIndex:I

    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->val$newIndex:I

    iput p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->val$maxIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "HdmiControlService"

    const-string v0, "Local tv device not available"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->val$oldIndex:I

    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->val$newIndex:I

    sub-int/2addr v2, v1

    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->val$maxIndex:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->changeVolume(III)V

    return-void
.end method
