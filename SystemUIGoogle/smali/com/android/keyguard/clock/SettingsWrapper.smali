.class public final Lcom/android/keyguard/clock/SettingsWrapper;
.super Ljava/lang/Object;
.source "SettingsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/clock/SettingsWrapper$Migrator;,
        Lcom/android/keyguard/clock/SettingsWrapper$Migration;
    }
.end annotation


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mMigration:Lcom/android/keyguard/clock/SettingsWrapper$Migration;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/keyguard/clock/SettingsWrapper$Migration;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/clock/SettingsWrapper;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/keyguard/clock/SettingsWrapper;->mMigration:Lcom/android/keyguard/clock/SettingsWrapper$Migration;

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "ClockFaceSettings"

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p0, "clock"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "JSON object does not contain clock field."

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0

    :catch_1
    move-exception v1

    const-string v2, "Settings value is not valid JSON"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/keyguard/clock/SettingsWrapper;->mMigration:Lcom/android/keyguard/clock/SettingsWrapper$Migration;

    invoke-interface {p0, p2, p1}, Lcom/android/keyguard/clock/SettingsWrapper$Migration;->migrate(ILjava/lang/String;)V

    return-object p1
.end method
