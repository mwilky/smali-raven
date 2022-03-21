.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger;
.super Ljava/lang/Object;
.source "ShadeEventCoordinatorLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShadeEventCoordinatorLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShadeEventCoordinatorLogger.kt\ncom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,39:1\n120#2,6:40\n120#2,6:46\n*E\n*S KotlinDebug\n*F\n+ 1 ShadeEventCoordinatorLogger.kt\ncom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger\n*L\n32#1,6:40\n36#1,6:46\n*E\n"
.end annotation


# instance fields
.field private final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 1

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final logNotifRemovedByUser()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger$logNotifRemovedByUser$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger$logNotifRemovedByUser$2;

    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ShadeEventCoordinator"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logShadeEmptied()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger$logShadeEmptied$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger$logShadeEmptied$2;

    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ShadeEventCoordinator"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method
