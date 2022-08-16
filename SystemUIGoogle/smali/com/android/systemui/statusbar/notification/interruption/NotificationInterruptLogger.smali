.class public final Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;
.super Ljava/lang/Object;
.source "NotificationInterruptLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationInterruptLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationInterruptLogger.kt\ncom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,225:1\n138#2,4:226\n138#2,4:230\n138#2,4:234\n138#2,4:238\n138#2,4:242\n138#2,4:246\n138#2,4:250\n138#2,4:254\n138#2,4:258\n138#2,4:262\n138#2,4:266\n138#2,4:270\n138#2,4:274\n138#2,4:278\n138#2,4:282\n138#2,4:286\n138#2,4:290\n138#2,4:294\n138#2,4:298\n138#2,4:302\n138#2,4:306\n138#2,4:310\n138#2,4:314\n*S KotlinDebug\n*F\n+ 1 NotificationInterruptLogger.kt\ncom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger\n*L\n32#1:226,4\n40#1:230,4\n47#1:234,4\n55#1:238,4\n63#1:242,4\n70#1:246,4\n78#1:250,4\n86#1:254,4\n94#1:258,4\n102#1:262,4\n113#1:266,4\n122#1:270,4\n130#1:274,4\n138#1:278,4\n150#1:282,4\n160#1:286,4\n168#1:290,4\n176#1:294,4\n184#1:298,4\n192#1:302,4\n200#1:306,4\n208#1:310,4\n216#1:314,4\n*E\n"
.end annotation


# instance fields
.field public final hunBuffer:Lcom/android/systemui/log/LogBuffer;

.field public final notifBuffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->notifBuffer:Lcom/android/systemui/log/LogBuffer;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->hunBuffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final logNoAlertingSuppressedBy(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;Z)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->hunBuffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoAlertingSuppressedBy$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoAlertingSuppressedBy$2;

    const-string v2, "InterruptionStateProvider"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iput-boolean p3, v0, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    return-void
.end method
