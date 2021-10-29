.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils$LoggingState;
    }
.end annotation


# static fields
.field private static final loggingState:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils$LoggingState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils$LoggingState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils$LoggingState;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils$1;)V

    sput-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils;->loggingState:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils$LoggingState;

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils;->loggingState:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils$LoggingState;

    iget-boolean v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils$LoggingState;->loggingEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AiAiSuggestUi"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "msg",
            "e"
        }
    .end annotation

    const-string v0, "AiAiSuggestUi"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    const-string v0, "AiAiSuggestUi"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
