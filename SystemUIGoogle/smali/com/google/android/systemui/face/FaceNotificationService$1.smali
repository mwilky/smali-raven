.class public final Lcom/google/android/systemui/face/FaceNotificationService$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FaceNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/face/FaceNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/face/FaceNotificationService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/face/FaceNotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/face/FaceNotificationService$1;->this$0:Lcom/google/android/systemui/face/FaceNotificationService;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    const/16 p2, 0x3ec

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/face/FaceNotificationService$1;->this$0:Lcom/google/android/systemui/face/FaceNotificationService;

    iget-object p0, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mContext:Landroid/content/Context;

    const/4 p1, 0x3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, -0x2

    const-string p3, "face_unlock_re_enroll"

    invoke-static {p0, p3, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    return-void
.end method

.method public final onBiometricHelp$1(ILjava/lang/String;)V
    .locals 1

    const/16 p2, 0xd

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/face/FaceNotificationService$1;->this$0:Lcom/google/android/systemui/face/FaceNotificationService;

    iget-object p0, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, -0x2

    const-string v0, "face_unlock_re_enroll"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    return-void
.end method

.method public final onUserUnlocked()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/face/FaceNotificationService$1;->this$0:Lcom/google/android/systemui/face/FaceNotificationService;

    iget-boolean v1, v0, Lcom/google/android/systemui/face/FaceNotificationService;->mNotificationQueued:Z

    if-eqz v1, :cond_0

    const-string p0, "FaceNotificationService"

    const-string v0, "Not showing notification; already queued."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, v0, Lcom/google/android/systemui/face/FaceNotificationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "face_unlock_re_enroll"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/systemui/face/FaceNotificationService$1;->this$0:Lcom/google/android/systemui/face/FaceNotificationService;

    iput-boolean v2, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mNotificationQueued:Z

    iget-object v0, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mContext:Landroid/content/Context;

    const v1, 0x7f1302f8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mContext:Landroid/content/Context;

    const v2, 0x7f1302f7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/face/FaceNotificationService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/systemui/face/FaceNotificationService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0, v3, v1}, Lcom/google/android/systemui/face/FaceNotificationService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    const-wide/16 v0, 0x2710

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
