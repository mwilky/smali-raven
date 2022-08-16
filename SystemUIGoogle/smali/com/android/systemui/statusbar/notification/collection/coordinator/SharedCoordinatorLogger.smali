.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/SharedCoordinatorLogger;
.super Ljava/lang/Object;
.source "SharedCoordinatorLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharedCoordinatorLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedCoordinatorLogger.kt\ncom/android/systemui/statusbar/notification/collection/coordinator/SharedCoordinatorLogger\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,47:1\n138#2,4:48\n138#2,4:52\n*S KotlinDebug\n*F\n+ 1 SharedCoordinatorLogger.kt\ncom/android/systemui/statusbar/notification/collection/coordinator/SharedCoordinatorLogger\n*L\n31#1:48,4\n40#1:52,4\n*E\n"
.end annotation


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SharedCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method
