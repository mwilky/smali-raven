.class Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController$1;
.super Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;
.source "HapticsErrorInfoPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController;


# direct methods
.method constructor <init>(Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController$1;->this$0:Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController;

    invoke-direct {p0, p2}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController$1;->this$0:Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController;

    invoke-static {p0}, Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController;->access$000(Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
