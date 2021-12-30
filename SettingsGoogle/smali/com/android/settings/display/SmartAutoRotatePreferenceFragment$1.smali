.class Lcom/android/settings/display/SmartAutoRotatePreferenceFragment$1;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "SmartAutoRotatePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment$1;->this$0:Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment$1;->this$0:Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->access$000(Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;)Lcom/android/settings/display/AutoRotateSwitchBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment$1;->this$0:Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;

    invoke-static {p0}, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->access$000(Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;)Lcom/android/settings/display/AutoRotateSwitchBarController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/display/AutoRotateSwitchBarController;->onChange()V

    :cond_0
    return-void
.end method
