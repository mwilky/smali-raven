.class public Lcom/android/server/pm/VerificationParams$2;
.super Landroid/content/BroadcastReceiver;
.source "VerificationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/VerificationParams;->sendPackageVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/VerificationParams;

.field public final synthetic val$response:Lcom/android/server/pm/PackageVerificationResponse;

.field public final synthetic val$streaming:Z

.field public final synthetic val$verificationId:I

.field public final synthetic val$verificationTimeout:J


# direct methods
.method public constructor <init>(Lcom/android/server/pm/VerificationParams;ZILcom/android/server/pm/PackageVerificationResponse;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/VerificationParams$2;->this$0:Lcom/android/server/pm/VerificationParams;

    iput-boolean p2, p0, Lcom/android/server/pm/VerificationParams$2;->val$streaming:Z

    iput p3, p0, Lcom/android/server/pm/VerificationParams$2;->val$verificationId:I

    iput-object p4, p0, Lcom/android/server/pm/VerificationParams$2;->val$response:Lcom/android/server/pm/PackageVerificationResponse;

    iput-wide p5, p0, Lcom/android/server/pm/VerificationParams$2;->val$verificationTimeout:J

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    iget-boolean v2, p0, Lcom/android/server/pm/VerificationParams$2;->val$streaming:Z

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/VerificationParams$2;->this$0:Lcom/android/server/pm/VerificationParams;

    iget v1, p0, Lcom/android/server/pm/VerificationParams$2;->val$verificationId:I

    iget-object v3, p0, Lcom/android/server/pm/VerificationParams$2;->val$response:Lcom/android/server/pm/PackageVerificationResponse;

    iget-wide v4, p0, Lcom/android/server/pm/VerificationParams$2;->val$verificationTimeout:J

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/VerificationParams;->-$$Nest$mstartVerificationTimeoutCountdown(Lcom/android/server/pm/VerificationParams;IZLcom/android/server/pm/PackageVerificationResponse;J)V

    :cond_0
    return-void
.end method
