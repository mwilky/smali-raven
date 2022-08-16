.class public final synthetic Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->$r8$lambda$asH1co4k-DupEs15xsWjiLnv5KQ(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method
