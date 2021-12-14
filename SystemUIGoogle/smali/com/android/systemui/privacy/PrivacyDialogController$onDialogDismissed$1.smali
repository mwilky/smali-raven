.class public final Lcom/android/systemui/privacy/PrivacyDialogController$onDialogDismissed$1;
.super Ljava/lang/Object;
.source "PrivacyDialogController.kt"

# interfaces
.implements Lcom/android/systemui/privacy/PrivacyDialog$OnDialogDismissed;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/privacy/PrivacyDialogController;-><init>(Landroid/permission/PermissionManager;Landroid/content/pm/PackageManager;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/appops/AppOpsController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/privacy/PrivacyDialogController$DialogProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/privacy/PrivacyDialogController;


# direct methods
.method constructor <init>(Lcom/android/systemui/privacy/PrivacyDialogController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogController$onDialogDismissed$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogDismissed()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyDialogController$onDialogDismissed$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    invoke-static {v0}, Lcom/android/systemui/privacy/PrivacyDialogController;->access$getPrivacyLogger$p(Lcom/android/systemui/privacy/PrivacyDialogController;)Lcom/android/systemui/privacy/logging/PrivacyLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logPrivacyDialogDismissed()V

    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyDialogController$onDialogDismissed$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    invoke-static {v0}, Lcom/android/systemui/privacy/PrivacyDialogController;->access$getUiEventLogger$p(Lcom/android/systemui/privacy/PrivacyDialogController;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/privacy/PrivacyDialogEvent;->PRIVACY_DIALOG_DISMISSED:Lcom/android/systemui/privacy/PrivacyDialogEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialogController$onDialogDismissed$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/privacy/PrivacyDialogController;->access$setDialog$p(Lcom/android/systemui/privacy/PrivacyDialogController;Landroid/app/Dialog;)V

    return-void
.end method
