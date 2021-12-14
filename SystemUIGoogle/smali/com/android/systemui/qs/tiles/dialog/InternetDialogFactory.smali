.class public final Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;
.super Ljava/lang/Object;
.source "InternetDialogFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory$Companion;

.field private static internetDialog:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;


# instance fields
.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final handler:Landroid/os/Handler;

.field private final internetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

.field private final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->Companion:Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internetDialogController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uiEventLogger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->internetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->context:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method public static final synthetic access$getInternetDialog$cp()Lcom/android/systemui/qs/tiles/dialog/InternetDialog;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->internetDialog:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    return-object v0
.end method

.method public static final synthetic access$setInternetDialog$cp(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V
    .locals 0

    sput-object p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->internetDialog:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    return-void
.end method


# virtual methods
.method public final create(ZZZ)V
    .locals 12

    sget-object v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->Companion:Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory$Companion;->getInternetDialog()Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactoryKt;->access$getDEBUG$p()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "InternetDialogFactory"

    const-string p1, "InternetDialog is showing, do not create it twice."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    new-instance v11, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->internetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->executor:Ljava/util/concurrent/Executor;

    move-object v1, v11

    move-object v3, p0

    move v5, p2

    move v6, p3

    move v7, p1

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;ZZZLcom/android/internal/logging/UiEventLogger;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v11}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory$Companion;->setInternetDialog(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory$Companion;->getInternetDialog()Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method

.method public final destroyDialog()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactoryKt;->access$getDEBUG$p()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "InternetDialogFactory"

    const-string v0, "destroyDialog"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->Companion:Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory$Companion;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory$Companion;->setInternetDialog(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    return-void
.end method
