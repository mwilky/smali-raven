.class final Lcom/android/server/vibrator/VibrationSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "VibrationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibrationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$SettingsObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$SettingsObserver;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationSettings;->updateSettings()V

    return-void
.end method
