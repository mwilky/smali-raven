.class public Lcom/google/android/systemui/gamedashboard/ScreenRecordController;
.super Ljava/lang/Object;
.source "ScreenRecordController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/screenrecord/RecordingController;

.field private final mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

.field private final mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

.field private final mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$RdZRHkqHIZr20_E-sJrQK0_S58M(Lcom/google/android/systemui/gamedashboard/ScreenRecordController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->lambda$handleClick$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$VVKKimw_f7cMO98zJQp3W-3Ts4E(Lcom/google/android/systemui/gamedashboard/ScreenRecordController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$m1kaOXQdKaIr68kRFqNn5CI1jsc(Lcom/google/android/systemui/gamedashboard/ScreenRecordController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->lambda$showPrompt$2()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/systemui/screenrecord/RecordingController;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Landroid/content/Context;Lcom/google/android/systemui/gamedashboard/ToastController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    iput-object p4, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mUiHandler:Landroid/os/Handler;

    new-instance p1, Lcom/google/android/systemui/gamedashboard/ScreenRecordController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/gamedashboard/ScreenRecordController;)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-object p3, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    iput-object p5, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

    return-void
.end method

.method private synthetic lambda$handleClick$1()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->showPrompt()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method private synthetic lambda$showPrompt$2()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/screenrecord/RecordingController;->createScreenRecordDialog(Landroid/content/Context;Ljava/lang/Runnable;)Lcom/android/systemui/screenrecord/ScreenRecordDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    const/4 p0, 0x0

    return p0
.end method

.method private showPrompt()V
    .locals 3

    new-instance v0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/gamedashboard/ScreenRecordController;)V

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;ZZ)V

    return-void
.end method


# virtual methods
.method public cancelCountdown()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingController;->cancelCountdown()V

    return-void
.end method

.method public getController()Lcom/android/systemui/screenrecord/RecordingController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    return-object p0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public handleClick()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/RecordingController;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->cancelCountdown()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/RecordingController;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->stopRecording()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/gamedashboard/ScreenRecordController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/gamedashboard/ScreenRecordController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public isRecording()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingController;->isRecording()Z

    move-result p0

    return p0
.end method

.method public isStarting()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingController;->isStarting()Z

    move-result p0

    return p0
.end method

.method public stopRecording()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/RecordingController;->stopRecording()V

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ToastController;->showRecordSaveText()V

    return-void
.end method
