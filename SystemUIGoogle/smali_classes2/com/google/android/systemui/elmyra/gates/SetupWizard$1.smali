.class Lcom/google/android/systemui/elmyra/gates/SetupWizard$1;
.super Ljava/lang/Object;
.source "SetupWizard.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/gates/SetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/SetupWizard;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/elmyra/gates/SetupWizard;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/SetupWizard$1;->this$0:Lcom/google/android/systemui/elmyra/gates/SetupWizard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateSetupComplete()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/SetupWizard$1;->this$0:Lcom/google/android/systemui/elmyra/gates/SetupWizard;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/gates/SetupWizard;->access$000(Lcom/google/android/systemui/elmyra/gates/SetupWizard;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/SetupWizard$1;->this$0:Lcom/google/android/systemui/elmyra/gates/SetupWizard;

    invoke-static {v1}, Lcom/google/android/systemui/elmyra/gates/SetupWizard;->access$100(Lcom/google/android/systemui/elmyra/gates/SetupWizard;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/SetupWizard$1;->this$0:Lcom/google/android/systemui/elmyra/gates/SetupWizard;

    invoke-static {v1, v0}, Lcom/google/android/systemui/elmyra/gates/SetupWizard;->access$102(Lcom/google/android/systemui/elmyra/gates/SetupWizard;Z)Z

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/SetupWizard$1;->this$0:Lcom/google/android/systemui/elmyra/gates/SetupWizard;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onDeviceProvisionedChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/gates/SetupWizard$1;->updateSetupComplete()V

    return-void
.end method

.method public onUserSetupChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/gates/SetupWizard$1;->updateSetupComplete()V

    return-void
.end method
