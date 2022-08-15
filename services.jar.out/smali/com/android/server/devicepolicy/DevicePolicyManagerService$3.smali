.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;
.super Landroid/content/IIntentSender$Stub;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->uninstallOrDisablePackage(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->val$userId:I

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    const-string p1, "android.content.pm.extra.STATUS"

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x0

    const/4 p4, 0x2

    const-string p5, "DevicePolicyManager"

    if-nez p1, :cond_0

    new-array p1, p4, [Ljava/lang/Object;

    iget-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->val$packageName:Ljava/lang/String;

    aput-object p4, p1, p2

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->val$userId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, p3

    const-string p0, "Package %s uninstalled for user %d"

    invoke-static {p5, p0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array p4, p4, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->val$packageName:Ljava/lang/String;

    aput-object p0, p4, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p4, p3

    const-string p0, "Failed to uninstall %s; status: %d"

    invoke-static {p5, p0, p4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
