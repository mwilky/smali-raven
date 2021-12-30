.class Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$2;
.super Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$SettingObserver;
.source "VibrationIntensitySliderPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;


# direct methods
.method constructor <init>(Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$2;->this$0:Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;

    invoke-direct {p0, p2}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$SettingObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$2;->this$0:Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->toggleEnable()V

    return-void
.end method
