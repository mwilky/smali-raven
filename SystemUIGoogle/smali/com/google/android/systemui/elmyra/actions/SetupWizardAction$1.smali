.class public final Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SetupWizardAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$1;->this$0:Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserSwitching(I)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$1;->this$0:Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;

    iget-object v0, p1, Lcom/google/android/systemui/elmyra/actions/Action;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;->mDeviceInDemoMode:Z

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$1;->this$0:Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    return-void
.end method
