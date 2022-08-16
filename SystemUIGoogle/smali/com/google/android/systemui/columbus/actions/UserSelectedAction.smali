.class public final Lcom/google/android/systemui/columbus/actions/UserSelectedAction;
.super Lcom/google/android/systemui/columbus/actions/Action;
.source "UserSelectedAction.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserSelectedAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserSelectedAction.kt\ncom/google/android/systemui/columbus/actions/UserSelectedAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,121:1\n1849#2,2:122\n*S KotlinDebug\n*F\n+ 1 UserSelectedAction.kt\ncom/google/android/systemui/columbus/actions/UserSelectedAction\n*L\n72#1:122,2\n*E\n"
.end annotation


# instance fields
.field public currentAction:Lcom/google/android/systemui/columbus/actions/UserAction;

.field public final keyguardMonitorCallback:Lcom/google/android/systemui/columbus/actions/UserSelectedAction$keyguardMonitorCallback$1;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final powerManager:Lcom/google/android/systemui/columbus/PowerManagerWrapper;

.field public final takeScreenshot:Lcom/google/android/systemui/columbus/actions/TakeScreenshot;

.field public final userSelectedActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/systemui/columbus/actions/UserAction;",
            ">;"
        }
    .end annotation
.end field

.field public final wakefulnessLifecycleObserver:Lcom/google/android/systemui/columbus/actions/UserSelectedAction$wakefulnessLifecycleObserver$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusSettings;Ljava/util/Map;Lcom/google/android/systemui/columbus/actions/TakeScreenshot;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/google/android/systemui/columbus/PowerManagerWrapper;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/systemui/columbus/ColumbusSettings;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/systemui/columbus/actions/UserAction;",
            ">;",
            "Lcom/google/android/systemui/columbus/actions/TakeScreenshot;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/google/android/systemui/columbus/PowerManagerWrapper;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/columbus/actions/Action;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    iput-object p3, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->userSelectedActions:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->takeScreenshot:Lcom/google/android/systemui/columbus/actions/TakeScreenshot;

    iput-object p5, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p6, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->powerManager:Lcom/google/android/systemui/columbus/PowerManagerWrapper;

    new-instance p1, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$settingsChangeListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$settingsChangeListener$1;-><init>(Lcom/google/android/systemui/columbus/actions/UserSelectedAction;)V

    new-instance p5, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$keyguardMonitorCallback$1;

    invoke-direct {p5, p0}, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$keyguardMonitorCallback$1;-><init>(Lcom/google/android/systemui/columbus/actions/UserSelectedAction;)V

    iput-object p5, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->keyguardMonitorCallback:Lcom/google/android/systemui/columbus/actions/UserSelectedAction$keyguardMonitorCallback$1;

    new-instance p5, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$wakefulnessLifecycleObserver$1;

    invoke-direct {p5, p0}, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$wakefulnessLifecycleObserver$1;-><init>(Lcom/google/android/systemui/columbus/actions/UserSelectedAction;)V

    iput-object p5, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->wakefulnessLifecycleObserver:Lcom/google/android/systemui/columbus/actions/UserSelectedAction$wakefulnessLifecycleObserver$1;

    invoke-virtual {p2}, Lcom/google/android/systemui/columbus/ColumbusSettings;->selectedAction()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p3, p5, p4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/systemui/columbus/actions/UserAction;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->currentAction:Lcom/google/android/systemui/columbus/actions/UserAction;

    const-string p5, "User Action selected: "

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "Columbus/SelectedAction"

    invoke-static {p5, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->registerColumbusSettingsChangeListener(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;)V

    new-instance p1, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$sublistener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$sublistener$1;-><init>(Lcom/google/android/systemui/columbus/actions/UserSelectedAction;)V

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/systemui/columbus/actions/UserAction;

    iget-object p3, p3, Lcom/google/android/systemui/columbus/actions/Action;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object p2, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->keyguardMonitorCallback:Lcom/google/android/systemui/columbus/actions/UserSelectedAction$keyguardMonitorCallback$1;

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->wakefulnessLifecycleObserver:Lcom/google/android/systemui/columbus/actions/UserSelectedAction$wakefulnessLifecycleObserver$1;

    invoke-virtual {p7, p1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->updateAvailable()V

    return-void
.end method


# virtual methods
.method public final getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->currentAction:Lcom/google/android/systemui/columbus/actions/UserAction;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/Action;->getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onGestureDetected(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->currentAction:Lcom/google/android/systemui/columbus/actions/UserAction;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/actions/Action;->onGestureDetected(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    return-void
.end method

.method public final onTrigger(Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->currentAction:Lcom/google/android/systemui/columbus/actions/UserAction;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/actions/Action;->onTrigger(Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/columbus/actions/Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [currentAction -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->currentAction:Lcom/google/android/systemui/columbus/actions/UserAction;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateAvailable()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->currentAction:Lcom/google/android/systemui/columbus/actions/UserAction;

    iget-boolean v1, v0, Lcom/google/android/systemui/columbus/actions/Action;->isAvailable:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/actions/UserAction;->availableOnScreenOff()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->powerManager:Lcom/google/android/systemui/columbus/PowerManagerWrapper;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/PowerManagerWrapper;->powerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->currentAction:Lcom/google/android/systemui/columbus/actions/UserAction;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/actions/UserAction;->availableOnLockscreen()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    :goto_1
    return-void
.end method

.method public final updateFeedbackEffects(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->currentAction:Lcom/google/android/systemui/columbus/actions/UserAction;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/actions/Action;->updateFeedbackEffects(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    return-void
.end method
