.class Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$2;
.super Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$SettingObserver;
.source "VibrateForCallsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;


# direct methods
.method constructor <init>(Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$2;->this$0:Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;

    invoke-direct {p0, p2}, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$SettingObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$2;->this$0:Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;

    invoke-virtual {p1}, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->toggleEnable()V

    iget-object p0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController$2;->this$0:Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;

    invoke-static {p0}, Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;->access$000(Lcom/google/android/settings/sound/VibrateForCallsPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
