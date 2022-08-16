.class public final Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;
.super Ljava/lang/Object;
.source "NotificationEntryManagerLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationEntryManagerLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationEntryManagerLogger.kt\ncom/android/systemui/statusbar/notification/NotificationEntryManagerLogger\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,110:1\n138#2,4:111\n138#2,4:115\n138#2,4:119\n138#2,4:123\n138#2,4:127\n138#2,4:131\n138#2,4:135\n138#2,4:139\n138#2,4:143\n*S KotlinDebug\n*F\n+ 1 NotificationEntryManagerLogger.kt\ncom/android/systemui/statusbar/notification/NotificationEntryManagerLogger\n*L\n31#1:111,4\n39#1:115,4\n47#1:119,4\n57#1:123,4\n66#1:127,4\n74#1:131,4\n84#1:135,4\n93#1:139,4\n101#1:143,4\n*E\n"
.end annotation


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final logFilterAndSort(Ljava/lang/String;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger$logFilterAndSort$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger$logFilterAndSort$2;

    const-string v2, "NotificationEntryMgr"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    iput-object p1, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    return-void
.end method

.method public final logUseWhileNewPipelineActive(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger$logUseWhileNewPipelineActive$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger$logUseWhileNewPipelineActive$2;

    const-string v2, "NotificationEntryMgr"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    iput-object p1, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    return-void
.end method
