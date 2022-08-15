.class public Lcom/android/server/devicepolicy/RemoteBugreportManager$2;
.super Landroid/content/BroadcastReceiver;
.source "RemoteBugreportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/RemoteBugreportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/RemoteBugreportManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$2;->this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$2;->this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    invoke-static {p2}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->-$$Nest$fgetmInjector(Lcom/android/server/devicepolicy/RemoteBugreportManager;)Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object p2

    const-string v0, "DevicePolicyManager"

    const v1, 0x28700e57

    invoke-virtual {p2, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    const-string p2, "com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$2;->this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    invoke-static {p1}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->-$$Nest$monBugreportSharingAccepted(Lcom/android/server/devicepolicy/RemoteBugreportManager;)V

    goto :goto_0

    :cond_0
    const-string p2, "com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$2;->this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    invoke-static {p1}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->-$$Nest$monBugreportSharingDeclined(Lcom/android/server/devicepolicy/RemoteBugreportManager;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$2;->this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    invoke-static {p1}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->-$$Nest$fgetmContext(Lcom/android/server/devicepolicy/RemoteBugreportManager;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$2;->this$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    invoke-static {p0}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->-$$Nest$fgetmRemoteBugreportConsentReceiver(Lcom/android/server/devicepolicy/RemoteBugreportManager;)Landroid/content/BroadcastReceiver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
