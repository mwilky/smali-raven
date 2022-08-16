.class public final Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;
.super Ljava/lang/Object;
.source "MediaTttCommandLineHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$SenderCommand;,
        Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$ReceiverCommand;
    }
.end annotation


# instance fields
.field public final context:Landroid/content/Context;

.field public final mainExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/commandline/CommandRegistry;Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$1;-><init>(Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;)V

    const-string p3, "media-ttt-chip-sender"

    invoke-virtual {p1, p3, p2}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    new-instance p2, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper$2;-><init>(Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;)V

    const-string p0, "media-ttt-chip-receiver"

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
