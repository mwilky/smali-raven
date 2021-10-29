.class Lcom/android/server/pm/PackageManagerService$VerificationParams$2;
.super Landroid/content/BroadcastReceiver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$VerificationParams;->sendIntegrityVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$VerificationParams;

.field final synthetic val$verificationId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$VerificationParams;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams$2;->this$1:Lcom/android/server/pm/PackageManagerService$VerificationParams;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams$2;->val$verificationId:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams$2;->this$1:Lcom/android/server/pm/PackageManagerService$VerificationParams;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams$2;->val$verificationId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams$2;->this$1:Lcom/android/server/pm/PackageManagerService$VerificationParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams$2;->this$1:Lcom/android/server/pm/PackageManagerService$VerificationParams;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$6200(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
