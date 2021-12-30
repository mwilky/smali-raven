.class Lcom/android/settings/display/ScreenTimeoutSettings$2;
.super Landroid/text/style/ClickableSpan;
.source "ScreenTimeoutSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/ScreenTimeoutSettings;->setupDisabledFooterPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/ScreenTimeoutSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ScreenTimeoutSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/display/ScreenTimeoutSettings$2;->this$0:Lcom/android/settings/display/ScreenTimeoutSettings;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/display/ScreenTimeoutSettings$2;->this$0:Lcom/android/settings/display/ScreenTimeoutSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutSettings$2;->this$0:Lcom/android/settings/display/ScreenTimeoutSettings;

    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method
