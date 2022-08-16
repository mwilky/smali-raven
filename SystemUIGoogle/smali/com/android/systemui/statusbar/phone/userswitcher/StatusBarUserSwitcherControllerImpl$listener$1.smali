.class public final Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl$listener$1;
.super Ljava/lang/Object;
.source "StatusBarUserSwitcherController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/userswitcher/CurrentUserChipInfoUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;-><init>(Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherFeatureController;Lcom/android/systemui/qs/user/UserSwitchDialogController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/FalsingManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl$listener$1;->this$0:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCurrentUserChipInfoUpdated()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl$listener$1;->this$0:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;->updateChip()V

    return-void
.end method

.method public final onStatusBarUserSwitcherSettingChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl$listener$1;->this$0:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;->updateEnabled()V

    return-void
.end method
