.class Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$1;
.super Lcom/android/settings/accessibility/SettingsContentObserver;
.source "AccessibilityShortcutPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;Landroid/os/Handler;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;

    invoke-direct {p0, p2, p3}, Lcom/android/settings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->updateShortcutPreferenceData()V

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->updateShortcutPreference()V

    return-void
.end method
