.class public final Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyManager.kt"


# instance fields
.field private final bouncerShowing:Z

.field private final keyguardOccluded:Z

.field private final keyguardShowing:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;->keyguardShowing:Z

    iput-boolean p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;->keyguardOccluded:Z

    iput-boolean p3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;->bouncerShowing:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;

    iget-boolean v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;->keyguardShowing:Z

    iget-boolean v3, p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;->keyguardShowing:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;->keyguardOccluded:Z

    iget-boolean v3, p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;->keyguardOccluded:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;->bouncerShowing:Z

    iget-boolean p1, p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;->bouncerShowing:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getBouncerShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;->bouncerShowing:Z

    return p0
.end method

.method public final getKeyguardOccluded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;->keyguardOccluded:Z

    return p0
.end method

.method public final getKeyguardShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;->keyguardShowing:Z

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;->keyguardShowing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;->keyguardOccluded:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;->bouncerShowing:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, p0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarWindowState(keyguardShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;->keyguardShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", keyguardOccluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;->keyguardOccluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bouncerShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;->bouncerShowing:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
