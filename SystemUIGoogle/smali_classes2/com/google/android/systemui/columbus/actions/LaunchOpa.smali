.class public Lcom/google/android/systemui/columbus/actions/LaunchOpa;
.super Lcom/google/android/systemui/columbus/actions/UserAction;
.source "LaunchOpa.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/actions/LaunchOpa$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/actions/LaunchOpa$Companion;


# instance fields
.field private final assistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

.field private enableForAnyAssistant:Z

.field private isGestureEnabled:Z

.field private isOpaEnabled:Z

.field private final keyguardManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/app/KeyguardManager;",
            ">;"
        }
    .end annotation
.end field

.field private final opaEnabledListener:Lcom/google/android/systemui/assist/OpaEnabledListener;

.field private final settingsObserver:Lcom/google/android/systemui/columbus/ColumbusContentObserver;

.field private final statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final tag:Ljava/lang/String;

.field private final tunable:Lcom/android/systemui/tuner/TunerService$Tunable;

.field private final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/actions/LaunchOpa$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/actions/LaunchOpa$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->Companion:Lcom/google/android/systemui/columbus/actions/LaunchOpa$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/util/Set;Lcom/android/systemui/assist/AssistManager;Ldagger/Lazy;Lcom/android/systemui/tuner/TunerService;Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;",
            ">;",
            "Lcom/android/systemui/assist/AssistManager;",
            "Ldagger/Lazy<",
            "Landroid/app/KeyguardManager;",
            ">;",
            "Lcom/android/systemui/tuner/TunerService;",
            "Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;",
            "Lcom/android/internal/logging/UiEventLogger;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBar"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedbackEffects"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assistManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tunerService"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsObserverFactory"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiEventLogger"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/google/android/systemui/columbus/actions/UserAction;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p5, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->keyguardManager:Ldagger/Lazy;

    iput-object p8, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const-string p1, "Columbus/LaunchOpa"

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->tag:Ljava/lang/String;

    instance-of p1, p4, Lcom/google/android/systemui/assist/AssistManagerGoogle;

    if-eqz p1, :cond_0

    check-cast p4, Lcom/google/android/systemui/assist/AssistManagerGoogle;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iput-object p4, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->assistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    new-instance p1, Lcom/google/android/systemui/columbus/actions/LaunchOpa$opaEnabledListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/actions/LaunchOpa$opaEnabledListener$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchOpa;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->opaEnabledListener:Lcom/google/android/systemui/assist/OpaEnabledListener;

    const-string p2, "assist_gesture_enabled"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "getUriFor(Settings.Secure.ASSIST_GESTURE_ENABLED)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lcom/google/android/systemui/columbus/actions/LaunchOpa$settingsObserver$1;

    invoke-direct {p3, p0}, Lcom/google/android/systemui/columbus/actions/LaunchOpa$settingsObserver$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchOpa;)V

    invoke-virtual {p7, p2, p3}, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;->create(Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)Lcom/google/android/systemui/columbus/ColumbusContentObserver;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->settingsObserver:Lcom/google/android/systemui/columbus/ColumbusContentObserver;

    new-instance p3, Lcom/google/android/systemui/columbus/actions/LaunchOpa$tunable$1;

    invoke-direct {p3, p0}, Lcom/google/android/systemui/columbus/actions/LaunchOpa$tunable$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchOpa;)V

    iput-object p3, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->tunable:Lcom/android/systemui/tuner/TunerService$Tunable;

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->fetchIsGestureEnabled()Z

    move-result p5

    iput-boolean p5, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->isGestureEnabled:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/Action;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p5

    const-string p7, "assist_gesture_any_assistant"

    const/4 p8, 0x0

    invoke-static {p5, p7, p8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p5

    const/4 v0, 0x1

    if-ne p5, v0, :cond_1

    move p8, v0

    :cond_1
    iput-boolean p8, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->enableForAnyAssistant:Z

    invoke-virtual {p2}, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->activate()V

    filled-new-array {p7}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p3, p2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p4, p1}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->addOpaEnabledListener(Lcom/google/android/systemui/assist/OpaEnabledListener;)V

    :goto_1
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->updateAvailable()V

    return-void
.end method

.method public static final synthetic access$getAssistManager$p(Lcom/google/android/systemui/columbus/actions/LaunchOpa;)Lcom/google/android/systemui/assist/AssistManagerGoogle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->assistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    return-object p0
.end method

.method public static final synthetic access$getEnableForAnyAssistant$p(Lcom/google/android/systemui/columbus/actions/LaunchOpa;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->enableForAnyAssistant:Z

    return p0
.end method

.method public static final synthetic access$setEnableForAnyAssistant$p(Lcom/google/android/systemui/columbus/actions/LaunchOpa;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->enableForAnyAssistant:Z

    return-void
.end method

.method public static final synthetic access$setOpaEnabled$p(Lcom/google/android/systemui/columbus/actions/LaunchOpa;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->isOpaEnabled:Z

    return-void
.end method

.method public static final synthetic access$updateAvailable(Lcom/google/android/systemui/columbus/actions/LaunchOpa;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->updateAvailable()V

    return-void
.end method

.method public static final synthetic access$updateGestureEnabled(Lcom/google/android/systemui/columbus/actions/LaunchOpa;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->updateGestureEnabled()V

    return-void
.end method

.method private final fetchIsGestureEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/Action;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "assist_gesture_enabled"

    const/4 v1, 0x1

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final launchOpa(J)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->keyguardManager:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x78

    goto :goto_0

    :cond_0
    const/16 v1, 0x77

    :goto_0
    const-string v2, "triggered_by"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "latency_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 p1, 0x2

    const-string p2, "invocation_type"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->assistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method private final updateAvailable()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->isGestureEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->isOpaEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    return-void
.end method

.method private final updateGestureEnabled()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->fetchIsGestureEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->isGestureEnabled:Z

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->updateAvailable()V

    return-void
.end method


# virtual methods
.method public availableOnLockscreen()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public availableOnScreenOff()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public onTrigger(Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_ASSISTANT:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->collapseShade()V

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;->getActionId()J

    move-result-wide v0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->launchOpa(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/columbus/actions/Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [isGestureEnabled -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->isGestureEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; isOpaEnabled -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->isOpaEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
