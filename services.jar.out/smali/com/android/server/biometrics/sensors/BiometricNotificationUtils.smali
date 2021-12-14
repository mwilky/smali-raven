.class public Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;
.super Ljava/lang/Object;
.source "BiometricNotificationUtils.java"


# static fields
.field private static final BAD_CALIBRATION_NOTIFICATION_TAG:Ljava/lang/String; = "FingerprintService"

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final NOTIFICATION_INTERVAL_MS:J = 0x5265c00L

.field private static final RE_ENROLL_NOTIFICATION_TAG:Ljava/lang/String; = "FaceService"

.field private static final TAG:Ljava/lang/String; = "BiometricNotificationUtils"

.field private static sLastAlertTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->sLastAlertTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelBadCalibrationNotification(Landroid/content/Context;)V
    .locals 4

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v2, "FingerprintService"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public static cancelReEnrollNotification(Landroid/content/Context;)V
    .locals 4

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v2, "FaceService"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public static showBadCalibrationNotification(Landroid/content/Context;)V
    .locals 18

    move-object/from16 v7, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sget-wide v0, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->sLastAlertTime:J

    sub-long v10, v8, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x5265c00

    cmp-long v0, v10, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping calibration notification : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricNotificationUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sput-wide v8, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->sLastAlertTime:J

    const v0, 0x104039f

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v0, 0x10403a0

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v0, 0x104039e

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.FINGERPRINT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v15, v0

    const-string v0, "com.android.settings"

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v3, 0x4000000

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object v2, v15

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v16

    const-string v17, "FingerprintBadCalibrationNotificationChannel"

    const-string v5, "FingerprintBadCalibrationNotificationChannel"

    const-string v6, "FingerprintService"

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object/from16 v4, v16

    invoke-static/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showNotificationHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static showNotificationHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x4

    invoke-direct {v1, p5, p1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0, p5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x10803cf

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string/jumbo v4, "sys"

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p6, v3, v2, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static showReEnrollmentNotification(Landroid/content/Context;)V
    .locals 14

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/NotificationManager;

    nop

    const v0, 0x104036d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    nop

    const v0, 0x104036e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    nop

    const v0, 0x104036c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.FACE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    const-string v0, "com.android.settings"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v1, 0x0

    const/high16 v3, 0x4000000

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, v11

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    const-string v13, "FaceEnrollNotificationChannel"

    const-string v5, "FaceEnrollNotificationChannel"

    const-string v6, "FaceService"

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v12

    invoke-static/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showNotificationHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
