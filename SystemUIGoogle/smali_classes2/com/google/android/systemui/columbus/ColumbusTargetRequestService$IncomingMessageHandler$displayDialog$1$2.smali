.class final Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;
.super Ljava/lang/Object;
.source "ColumbusTargetRequestService.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

.field final synthetic this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;

.field final synthetic this$1:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;Landroid/os/Messenger;ILandroid/content/pm/LauncherActivityInfo;ILcom/google/android/systemui/columbus/ColumbusTargetRequestService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->$replyTo:Landroid/os/Messenger;

    iput p3, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->$requestCode:I

    iput-object p4, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    iput p5, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->$previousCount:I

    iput-object p6, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->this$1:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->$replyTo:Landroid/os/Messenger;

    iget v1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->$requestCode:I

    const/4 v2, 0x6

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->access$replyToMessenger(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;Landroid/os/Messenger;II)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Target change dismissed by user: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Columbus/TargetRequest"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->$previousCount:I

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_RETARGET_NOT_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_RETARGET_FOLLOW_ON_NOT_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->this$1:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getUiEventLogger$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, v1, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    return-void
.end method
