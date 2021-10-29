.class Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils$LoggingState;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoggingState"
.end annotation


# instance fields
.field loggingEnabled:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils$LoggingState;->loggingEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils$LoggingState;-><init>()V

    return-void
.end method
