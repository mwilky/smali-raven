.class public Lcom/android/server/hdmi/PowerStatusMonitorAction$1;
.super Ljava/lang/Object;
.source "PowerStatusMonitorAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/PowerStatusMonitorAction;->queryPowerStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/PowerStatusMonitorAction;

.field public final synthetic val$logicalAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/PowerStatusMonitorAction;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;->this$0:Lcom/android/server/hdmi/PowerStatusMonitorAction;

    iput p2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;->val$logicalAddress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;->this$0:Lcom/android/server/hdmi/PowerStatusMonitorAction;

    iget p0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;->val$logicalAddress:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p1, p0, v0, v1}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->-$$Nest$mupdatePowerStatus(Lcom/android/server/hdmi/PowerStatusMonitorAction;IIZ)V

    :cond_0
    return-void
.end method
