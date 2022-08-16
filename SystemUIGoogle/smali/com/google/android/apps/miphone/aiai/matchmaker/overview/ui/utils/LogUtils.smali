.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# direct methods
.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
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
