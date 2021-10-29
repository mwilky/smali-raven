.class public Lcom/google/android/systemui/elmyra/actions/LaunchOpa;
.super Lcom/google/android/systemui/elmyra/actions/Action;
.source "LaunchOpa.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;
    }
.end annotation


# instance fields
.field private final mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field private mEnableForAnyAssistant:Z

.field private mIsGestureEnabled:Z

.field private mIsOpaEnabled:Z

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mOpaEnabledListener:Lcom/google/android/systemui/assist/OpaEnabledListener;

.field private final mSettingsObserver:Lcom/google/android/systemui/elmyra/UserContentObserver;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public static synthetic $r8$lambda$8eJrQCh4rrxAzSnTIZRYsCksrLk(Lcom/google/android/systemui/elmyra/actions/LaunchOpa;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->lambda$new$0(Landroid/net/Uri;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/google/android/systemui/elmyra/actions/Action;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance p1, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$1;-><init>(Lcom/google/android/systemui/elmyra/actions/LaunchOpa;)V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mOpaEnabledListener:Lcom/google/android/systemui/assist/OpaEnabledListener;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const-class p2, Lcom/android/systemui/assist/AssistManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/assist/AssistManager;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "keyguard"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/KeyguardManager;

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->isGestureEnabled()Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mIsGestureEnabled:Z

    new-instance p3, Lcom/google/android/systemui/elmyra/UserContentObserver;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "assist_gesture_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/actions/LaunchOpa;)V

    invoke-direct {p3, v0, v1, v2}, Lcom/google/android/systemui/elmyra/UserContentObserver;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/function/Consumer;)V

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mSettingsObserver:Lcom/google/android/systemui/elmyra/UserContentObserver;

    const-class p3, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/tuner/TunerService;

    const-string v0, "assist_gesture_any_assistant"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    move v1, v0

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mEnableForAnyAssistant:Z

    check-cast p2, Lcom/google/android/systemui/assist/AssistManagerGoogle;

    invoke-virtual {p2, p1}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->addOpaEnabledListener(Lcom/google/android/systemui/assist/OpaEnabledListener;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/util/List;Lcom/google/android/systemui/elmyra/actions/LaunchOpa$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/elmyra/actions/LaunchOpa;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mEnableForAnyAssistant:Z

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/elmyra/actions/LaunchOpa;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mIsOpaEnabled:Z

    return p0
.end method

.method static synthetic access$102(Lcom/google/android/systemui/elmyra/actions/LaunchOpa;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mIsOpaEnabled:Z

    return p1
.end method

.method private isGestureEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->getContext()Landroid/content/Context;

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

.method private synthetic lambda$new$0(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->updateGestureEnabled()V

    return-void
.end method

.method private updateGestureEnabled()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->isGestureEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mIsGestureEnabled:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mIsGestureEnabled:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    :cond_0
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mIsGestureEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mIsOpaEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public launchOpa()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->launchOpa(J)V

    return-void
.end method

.method public launchOpa(J)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    :goto_0
    const-string v2, "triggered_by"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "latency_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 p1, 0x2

    const-string p2, "invocation_type"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    return-void
.end method

.method public onProgress(FI)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/elmyra/actions/Action;->updateFeedbackEffects(FI)V

    return-void
.end method

.method public onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->collapseShade()V

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/actions/Action;->triggerFeedbackEffects(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;->getActionId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->launchOpa(J)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "assist_gesture_any_assistant"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mEnableForAnyAssistant:Z

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    check-cast p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->dispatchOpaEnabledState()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [mIsGestureEnabled -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mIsGestureEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; mIsOpaEnabled -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->mIsOpaEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
