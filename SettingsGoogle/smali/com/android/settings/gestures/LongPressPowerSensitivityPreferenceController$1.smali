.class Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "LongPressPowerSensitivityPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController$1;->this$0:Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController$1;->this$0:Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;

    invoke-static {p1}, Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;)Lcom/android/settings/widget/LabeledSeekBarPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController$1;->this$0:Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;

    invoke-static {p0}, Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;)Lcom/android/settings/widget/LabeledSeekBarPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
