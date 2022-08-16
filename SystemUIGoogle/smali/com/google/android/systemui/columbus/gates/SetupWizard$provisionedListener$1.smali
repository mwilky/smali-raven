.class public final Lcom/google/android/systemui/columbus/gates/SetupWizard$provisionedListener$1;
.super Ljava/lang/Object;
.source "SetupWizard.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/SetupWizard;-><init>(Landroid/content/Context;Ljava/util/Set;Ldagger/Lazy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/gates/SetupWizard;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/gates/SetupWizard;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard$provisionedListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeviceProvisionedChanged()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard$provisionedListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizard;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/SetupWizard;->isSetupComplete()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/systemui/columbus/gates/SetupWizard;->setupComplete:Z

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard$provisionedListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizard;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/SetupWizard;->updateBlocking()V

    return-void
.end method

.method public final onUserSetupChanged()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard$provisionedListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizard;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/SetupWizard;->isSetupComplete()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/systemui/columbus/gates/SetupWizard;->setupComplete:Z

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard$provisionedListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizard;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/SetupWizard;->updateBlocking()V

    return-void
.end method
