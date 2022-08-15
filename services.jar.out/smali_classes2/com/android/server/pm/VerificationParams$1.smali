.class public Lcom/android/server/pm/VerificationParams$1;
.super Landroid/content/BroadcastReceiver;
.source "VerificationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/VerificationParams;->sendIntegrityVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/VerificationParams;

.field public final synthetic val$verificationId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/VerificationParams;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/VerificationParams$1;->this$0:Lcom/android/server/pm/VerificationParams;

    iput p2, p0, Lcom/android/server/pm/VerificationParams$1;->val$verificationId:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/pm/VerificationParams$1;->this$0:Lcom/android/server/pm/VerificationParams;

    iget-object p1, p1, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x1a

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget p2, p0, Lcom/android/server/pm/VerificationParams$1;->val$verificationId:I

    iput p2, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/pm/VerificationParams$1;->this$0:Lcom/android/server/pm/VerificationParams;

    iget-object p2, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {p0}, Lcom/android/server/pm/VerificationParams;->-$$Nest$mgetIntegrityVerificationTimeout(Lcom/android/server/pm/VerificationParams;)J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
