.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic val$adminReceiver:Landroid/content/ComponentName;

.field public final synthetic val$userHandle:I


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$adminReceiver:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$userHandle:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$adminReceiver:Landroid/content/ComponentName;

    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$userHandle:I

    invoke-static {p1, p2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mremoveAdminArtifacts(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)V

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$userHandle:I

    invoke-static {p1, p2, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mremovePackageIfRequired(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    return-void
.end method
