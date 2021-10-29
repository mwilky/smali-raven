.class public Lcom/google/android/systemui/elmyra/feedback/UserActivity;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;


# instance fields
.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mLastStage:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mTriggerCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mTriggerCount:I

    iput v0, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mLastStage:I

    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method public onProgress(FI)V
    .locals 3

    iget p1, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mLastStage:I

    if-eq p2, p1, :cond_0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mPowerManager:Landroid/os/PowerManager;

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/os/PowerManager;->userActivity(JII)V

    iget p1, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mTriggerCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mTriggerCount:I

    :cond_0
    iput p2, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mLastStage:I

    return-void
.end method

.method public onRelease()V
    .locals 0

    return-void
.end method

.method public onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    iget p1, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mTriggerCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mTriggerCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [mTriggerCount -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/systemui/elmyra/feedback/UserActivity;->mTriggerCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
