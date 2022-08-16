.class public final Lcom/android/systemui/qs/FooterActionsController$multiUserSetting$1;
.super Lcom/android/systemui/qs/SettingObserver;
.source "FooterActionsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/FooterActionsController;-><init>(Lcom/android/systemui/qs/FooterActionsView;Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$Factory;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/UserManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/qs/QSSecurityFooter;Lcom/android/systemui/qs/QSFgsManagerFooter;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Ljavax/inject/Provider;Lcom/android/internal/logging/UiEventLogger;ZLcom/android/systemui/util/settings/GlobalSettings;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/FooterActionsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FooterActionsController;Lcom/android/systemui/util/settings/GlobalSettings;Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/FooterActionsController$multiUserSetting$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    check-cast p2, Lcom/android/systemui/util/settings/SettingsProxy;

    const-string/jumbo p1, "user_switcher_enabled"

    invoke-direct {p0, p2, p3, p1, p4}, Lcom/android/systemui/qs/SettingObserver;-><init>(Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final handleValueChanged(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController$multiUserSetting$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/FooterActionsController;->updateView()V

    :cond_0
    return-void
.end method
