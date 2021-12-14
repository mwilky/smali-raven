.class final Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;
.super Ljava/lang/Object;
.source "ColumbusTargetRequestService.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $appInfo:Landroid/content/pm/LauncherActivityInfo;

.field final synthetic $previousCount:I

.field final synthetic $replyTo:Landroid/os/Messenger;

.field final synthetic $requestCode:I

.field final synthetic this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

.field final synthetic this$1:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;Landroid/content/pm/LauncherActivityInfo;Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;Landroid/os/Messenger;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$1:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$replyTo:Landroid/os/Messenger;

    iput p5, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$requestCode:I

    iput p6, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$previousCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 p1, -0x2

    const/4 v0, 0x0

    const-string v1, "Columbus/TargetRequest"

    if-eq p2, p1, :cond_2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "Invalid dialog option: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-virtual {p1}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x1

    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-static {v2}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getUserTracker$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Lcom/android/systemui/settings/UserTracker;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result v2

    const-string v3, "columbus_enabled"

    invoke-static {p1, v3, p2, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-virtual {p1}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-static {p2}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getUserTracker$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Lcom/android/systemui/settings/UserTracker;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p2

    const-string v2, "columbus_action"

    const-string v3, "launch"

    invoke-static {p1, v2, v3, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-virtual {p1}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-static {v2}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getUserTracker$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Lcom/android/systemui/settings/UserTracker;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result v2

    const-string v3, "columbus_launch_app"

    invoke-static {p1, v3, p2, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-virtual {p1}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-static {v2}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getUserTracker$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Lcom/android/systemui/settings/UserTracker;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result v2

    const-string v3, "columbus_launch_app_shortcut"

    invoke-static {p1, v3, p2, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$1:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;

    iget-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$replyTo:Landroid/os/Messenger;

    iget v2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$requestCode:I

    invoke-static {p1, p2, v2, v0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->access$replyToMessenger(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;Landroid/os/Messenger;II)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Target changed to "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$previousCount:I

    if-nez p1, :cond_1

    sget-object p1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_RETARGET_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_RETARGET_FOLLOW_ON_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

    :goto_0
    iget-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-static {p2}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getUiEventLogger$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object p2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p1, v0, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getColumbusStructuredDataManager$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v2, "appInfo.componentName.packageName"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->setLastDenyTimeToNow(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$1:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;

    iget-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$replyTo:Landroid/os/Messenger;

    iget v2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$requestCode:I

    const/4 v3, 0x5

    invoke-static {p1, p2, v2, v3}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->access$replyToMessenger(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;Landroid/os/Messenger;II)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Target change denied by user: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$previousCount:I

    if-nez p1, :cond_3

    sget-object p1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_RETARGET_NOT_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_RETARGET_FOLLOW_ON_NOT_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

    :goto_1
    iget-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-static {p2}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getUiEventLogger$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object p2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p1, v0, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    :goto_2
    return-void
.end method
