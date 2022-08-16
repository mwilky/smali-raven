.class public final Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$controlsContentObserver$1;
.super Landroid/database/ContentObserver;
.source "ControlActionCoordinatorImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ljava/util/Optional;Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/settings/UserContextProvider;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $lockScreenShowControlsUri:Landroid/net/Uri;

.field public final synthetic $showControlsUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/net/Uri;Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;Landroid/net/Uri;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$controlsContentObserver$1;->$lockScreenShowControlsUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$controlsContentObserver$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iput-object p4, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$controlsContentObserver$1;->$showControlsUri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$controlsContentObserver$1;->$lockScreenShowControlsUri:Landroid/net/Uri;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$controlsContentObserver$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string p2, "lockscreen_allow_trivial_controls"

    invoke-interface {p1, p2, v2, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->mAllowTrivialControls:Z

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$controlsContentObserver$1;->$showControlsUri:Landroid/net/Uri;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$controlsContentObserver$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string p2, "lockscreen_show_controls"

    invoke-interface {p1, p2, v2, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->mShowDeviceControlsInLockscreen:Z

    :cond_3
    :goto_2
    return-void
.end method
