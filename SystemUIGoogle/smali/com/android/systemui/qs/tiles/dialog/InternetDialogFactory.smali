.class public final Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;
.super Ljava/lang/Object;
.source "InternetDialogFactory.kt"


# static fields
.field public static internetDialog:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;


# instance fields
.field public final context:Landroid/content/Context;

.field public final dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final handler:Landroid/os/Handler;

.field public final internetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/animation/DialogLaunchAnimator;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->internetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->context:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p6, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    iput-object p7, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-void
.end method


# virtual methods
.method public final create(ZZLandroid/view/View;)V
    .locals 11

    sget-object v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->internetDialog:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    if-eqz v0, :cond_1

    sget-boolean p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactoryKt;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "InternetDialogFactory"

    const-string p1, "InternetDialog is showing, do not create it twice."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    new-instance v10, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->internetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->handler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->executor:Ljava/util/concurrent/Executor;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v0, v10

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;ZZLcom/android/internal/logging/UiEventLogger;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V

    sput-object v10, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->internetDialog:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    if-eqz p3, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    const/4 p1, 0x1

    invoke-virtual {p0, v10, p3, p1}, Lcom/android/systemui/animation/DialogLaunchAnimator;->showFromView(Landroid/app/Dialog;Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method
