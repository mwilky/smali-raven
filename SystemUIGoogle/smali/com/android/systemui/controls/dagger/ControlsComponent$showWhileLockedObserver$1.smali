.class public final Lcom/android/systemui/controls/dagger/ControlsComponent$showWhileLockedObserver$1;
.super Landroid/database/ContentObserver;
.source "ControlsComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/dagger/ControlsComponent;-><init>(ZLandroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/settings/SecureSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/dagger/ControlsComponent;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/dagger/ControlsComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/dagger/ControlsComponent$showWhileLockedObserver$1;->this$0:Lcom/android/systemui/controls/dagger/ControlsComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/dagger/ControlsComponent$showWhileLockedObserver$1;->this$0:Lcom/android/systemui/controls/dagger/ControlsComponent;

    invoke-static {p0}, Lcom/android/systemui/controls/dagger/ControlsComponent;->access$updateShowWhileLocked(Lcom/android/systemui/controls/dagger/ControlsComponent;)V

    return-void
.end method
