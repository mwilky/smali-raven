.class Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$1;
.super Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;
.source "VibrationTogglePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;


# direct methods
.method constructor <init>(Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$1;->this$0:Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;

    invoke-direct {p0, p2, p3}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$1;->this$0:Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;

    invoke-static {p1}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->access$000(Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;)Landroidx/preference/Preference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$1;->this$0:Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;

    invoke-static {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->access$100(Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;)V

    return-void
.end method
