.class Lcom/google/android/settings/accessibility/HapticsDialogPreference$1;
.super Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;
.source "HapticsDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/settings/accessibility/HapticsDialogPreference;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/settings/accessibility/HapticsDialogPreference;


# direct methods
.method constructor <init>(Lcom/google/android/settings/accessibility/HapticsDialogPreference;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/accessibility/HapticsDialogPreference$1;->this$0:Lcom/google/android/settings/accessibility/HapticsDialogPreference;

    invoke-direct {p0, p2}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/accessibility/HapticsDialogPreference$1;->this$0:Lcom/google/android/settings/accessibility/HapticsDialogPreference;

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->updatePreference()V

    return-void
.end method
