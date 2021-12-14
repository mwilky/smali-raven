.class final Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;
.super Ljava/lang/Object;
.source "ColumbusTargetRequestService.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->displayDialog(Landroid/content/pm/LauncherActivityInfo;Landroid/os/Messenger;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $appInfo:Landroid/content/pm/LauncherActivityInfo;

.field final synthetic $replyTo:Landroid/os/Messenger;

.field final synthetic $requestCode:I

.field final synthetic this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

.field final synthetic this$1:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;Landroid/content/pm/LauncherActivityInfo;Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;Landroid/os/Messenger;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->this$1:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->$replyTo:Landroid/os/Messenger;

    iput p5, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getColumbusStructuredDataManager$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appInfo.componentName.packageName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->getPackageShownCount(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-static {v1}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getUiEventLogger$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object v1

    sget-object v3, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_RETARGET_DIALOG_SHOWN:Lcom/google/android/systemui/columbus/ColumbusEvent;

    iget-object v4, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v3, v5, v4}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    new-instance v1, Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog;

    iget-object v3, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    invoke-static {v3}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;->access$getSysUIContext$p(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v10, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    new-instance v11, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;

    iget-object v4, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    iget-object v6, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->this$1:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;

    iget-object v7, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->$replyTo:Landroid/os/Messenger;

    iget v8, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->$requestCode:I

    move-object v3, v11

    move-object v5, v10

    move v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$1;-><init>(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;Landroid/content/pm/LauncherActivityInfo;Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;Landroid/os/Messenger;II)V

    new-instance v12, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;

    iget-object v4, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->this$1:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;

    iget-object v5, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->$replyTo:Landroid/os/Messenger;

    iget v6, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->$requestCode:I

    iget-object v7, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    iget-object v9, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    move-object v3, v12

    move v8, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1$2;-><init>(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;Landroid/os/Messenger;ILandroid/content/pm/LauncherActivityInfo;ILcom/google/android/systemui/columbus/ColumbusTargetRequestService;)V

    invoke-virtual {v1, v10, v11, v12}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog;->bind(Landroid/content/pm/LauncherActivityInfo;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->this$1:Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler$displayDialog$1;->$appInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;->access$incrementPackageShowCount(Lcom/google/android/systemui/columbus/ColumbusTargetRequestService$IncomingMessageHandler;Ljava/lang/String;)V

    return-void
.end method
