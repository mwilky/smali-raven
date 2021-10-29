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
.field final synthetic this$0:Lcom/google/android/systemui/columbus/gates/SetupWizard;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/gates/SetupWizard;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard$provisionedListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final updateSetupComplete()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard$provisionedListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizard;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/gates/SetupWizard;->access$isSetupComplete(Lcom/google/android/systemui/columbus/gates/SetupWizard;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/systemui/columbus/gates/SetupWizard;->access$setSetupComplete$p(Lcom/google/android/systemui/columbus/gates/SetupWizard;Z)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard$provisionedListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizard;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/gates/SetupWizard;->access$updateBlocking(Lcom/google/android/systemui/columbus/gates/SetupWizard;)V

    return-void
.end method


# virtual methods
.method public onDeviceProvisionedChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/SetupWizard$provisionedListener$1;->updateSetupComplete()V

    return-void
.end method

.method public onUserSetupChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/SetupWizard$provisionedListener$1;->updateSetupComplete()V

    return-void
.end method
