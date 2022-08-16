.class public final Lcom/android/systemui/qs/QSEvents;
.super Ljava/lang/Object;
.source "QSEvents.kt"


# static fields
.field public static qsUiEventsLogger:Lcom/android/internal/logging/UiEventLoggerImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/QSEvents;->qsUiEventsLogger:Lcom/android/internal/logging/UiEventLoggerImpl;

    return-void
.end method
