.class public Lcom/android/server/dreams/DreamUiEventLoggerImpl;
.super Ljava/lang/Object;
.source "DreamUiEventLoggerImpl.java"

# interfaces
.implements Lcom/android/server/dreams/DreamUiEventLogger;


# instance fields
.field public final mLoggableDreamPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/dreams/DreamUiEventLoggerImpl;->mLoggableDreamPrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamUiEventLoggerImpl;->mLoggableDreamPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/dreams/DreamUiEventLoggerImpl;->mLoggableDreamPrefix:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    const/16 v0, 0x1c1

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo p2, "other"

    :goto_1
    invoke-static {v0, v1, p1, v1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIILjava/lang/String;)V

    return-void
.end method
