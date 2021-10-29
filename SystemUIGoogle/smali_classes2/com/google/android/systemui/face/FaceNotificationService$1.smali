.class Lcom/google/android/systemui/face/FaceNotificationService$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FaceNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/face/FaceNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/face/FaceNotificationService;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/face/FaceNotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/face/FaceNotificationService$1;->this$0:Lcom/google/android/systemui/face/FaceNotificationService;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    const/16 p2, 0x3ec

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/face/FaceNotificationService$1;->this$0:Lcom/google/android/systemui/face/FaceNotificationService;

    invoke-static {p0}, Lcom/google/android/systemui/face/FaceNotificationService;->access$000(Lcom/google/android/systemui/face/FaceNotificationService;)Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/google/android/systemui/face/FaceNotificationSettings;->updateReenrollSetting(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    const/16 p2, 0xd

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/face/FaceNotificationService$1;->this$0:Lcom/google/android/systemui/face/FaceNotificationService;

    invoke-static {p0}, Lcom/google/android/systemui/face/FaceNotificationService;->access$000(Lcom/google/android/systemui/face/FaceNotificationService;)Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/google/android/systemui/face/FaceNotificationSettings;->updateReenrollSetting(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public onUserUnlocked()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/face/FaceNotificationService$1;->this$0:Lcom/google/android/systemui/face/FaceNotificationService;

    invoke-static {v0}, Lcom/google/android/systemui/face/FaceNotificationService;->access$100(Lcom/google/android/systemui/face/FaceNotificationService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "FaceNotificationService"

    const-string v0, "Not showing notification; already queued."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/face/FaceNotificationService$1;->this$0:Lcom/google/android/systemui/face/FaceNotificationService;

    invoke-static {v0}, Lcom/google/android/systemui/face/FaceNotificationService;->access$000(Lcom/google/android/systemui/face/FaceNotificationService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/systemui/face/FaceNotificationSettings;->isReenrollRequired(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/face/FaceNotificationService$1;->this$0:Lcom/google/android/systemui/face/FaceNotificationService;

    invoke-static {p0}, Lcom/google/android/systemui/face/FaceNotificationService;->access$200(Lcom/google/android/systemui/face/FaceNotificationService;)V

    :cond_1
    return-void
.end method
