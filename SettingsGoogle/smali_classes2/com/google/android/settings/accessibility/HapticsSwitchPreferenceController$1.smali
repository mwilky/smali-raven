.class Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController$1;
.super Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;
.source "HapticsSwitchPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;


# direct methods
.method constructor <init>(Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController$1;->this$0:Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;

    invoke-direct {p0, p2}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController$1;->this$0:Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->updatePreference()V

    return-void
.end method
