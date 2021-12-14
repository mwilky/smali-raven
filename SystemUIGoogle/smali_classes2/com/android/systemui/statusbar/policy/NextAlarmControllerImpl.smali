.class public Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "NextAlarmControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;


# direct methods
.method public constructor <init>(Landroid/app/AlarmManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    const-string v0, "NextAlarmController"

    invoke-virtual {p3, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, v0, p3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->updateNextAlarm()V

    return-void
.end method

.method private fireNextAlarmChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;->onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateNextAlarm()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->fireNextAlarmChanged()V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;->onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p1, "mNextAlarm="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/Date;

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {p3}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  PendingIntentPkg="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "showIntent=null"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "null"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    const-string p1, "Registered Callbacks:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    const-string p3, "    "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->updateNextAlarm()V

    :cond_1
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    return-void
.end method
