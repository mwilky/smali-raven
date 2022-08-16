.class public final Lcom/android/systemui/controls/dagger/ControlsComponent$showWhileLockedObserver$1;
.super Landroid/database/ContentObserver;
.source "ControlsComponent.kt"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/dagger/ControlsComponent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/dagger/ControlsComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/dagger/ControlsComponent$showWhileLockedObserver$1;->this$0:Lcom/android/systemui/controls/dagger/ControlsComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/controls/dagger/ControlsComponent$showWhileLockedObserver$1;->this$0:Lcom/android/systemui/controls/dagger/ControlsComponent;

    iget-object p1, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const/4 v0, 0x0

    const/4 v1, -0x2

    const-string v2, "lockscreen_show_controls"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->canShowWhileLockedSetting:Z

    return-void
.end method
