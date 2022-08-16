.class public final Lcom/google/android/systemui/columbus/gates/SetupWizard;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "SetupWizard.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSetupWizard.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SetupWizard.kt\ncom/google/android/systemui/columbus/gates/SetupWizard\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n1849#2,2:77\n*S KotlinDebug\n*F\n+ 1 SetupWizard.kt\ncom/google/android/systemui/columbus/gates/SetupWizard\n*L\n49#1:77,2\n*E\n"
.end annotation


# instance fields
.field public final actionListener:Lcom/google/android/systemui/columbus/gates/SetupWizard$actionListener$1;

.field public exceptionActive:Z

.field public final exceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;"
        }
    .end annotation
.end field

.field public final provisionedController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;"
        }
    .end annotation
.end field

.field public final provisionedListener:Lcom/google/android/systemui/columbus/gates/SetupWizard$provisionedListener$1;

.field public setupComplete:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard;->exceptions:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard;->provisionedController:Ldagger/Lazy;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/SetupWizard$provisionedListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/SetupWizard$provisionedListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/SetupWizard;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard;->provisionedListener:Lcom/google/android/systemui/columbus/gates/SetupWizard$provisionedListener$1;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/SetupWizard$actionListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/SetupWizard$actionListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/SetupWizard;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard;->actionListener:Lcom/google/android/systemui/columbus/gates/SetupWizard$actionListener$1;

    return-void
.end method


# virtual methods
.method public final isSetupComplete()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard;->provisionedController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard;->provisionedController:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onActivate()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard;->exceptionActive:Z

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard;->exceptions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/actions/Action;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard;->actionListener:Lcom/google/android/systemui/columbus/gates/SetupWizard$actionListener$1;

    iget-object v3, v1, Lcom/google/android/systemui/columbus/actions/Action;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard;->exceptionActive:Z

    iget-boolean v1, v1, Lcom/google/android/systemui/columbus/actions/Action;->isAvailable:Z

    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard;->exceptionActive:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/SetupWizard;->isSetupComplete()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard;->setupComplete:Z

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard;->provisionedController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard;->provisionedListener:Lcom/google/android/systemui/columbus/gates/SetupWizard$provisionedListener$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/SetupWizard;->updateBlocking()V

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard;->provisionedController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard;->provisionedListener:Lcom/google/android/systemui/columbus/gates/SetupWizard$provisionedListener$1;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/columbus/gates/Gate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [isDeviceProvisioned -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard;->provisionedController:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; isCurrentUserSetup -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard;->provisionedController:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateBlocking()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard;->exceptionActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard;->setupComplete:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method
