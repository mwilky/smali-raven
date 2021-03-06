.class Lcom/android/server/people/data/DataManager$CallLogContentObserver;
.super Landroid/database/ContentObserver;
.source "DataManager.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallLogContentObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/ContentObserver;",
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/String;",
        "Lcom/android/server/people/data/Event;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallLogQueryHelper:Lcom/android/server/people/data/CallLogQueryHelper;

.field private mLastCallTimestamp:J

.field final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method private constructor <init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-static {p1}, Lcom/android/server/people/data/DataManager;->access$1000(Lcom/android/server/people/data/DataManager;)Lcom/android/server/people/data/DataManager$Injector;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/people/data/DataManager;->access$900(Lcom/android/server/people/data/DataManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/android/server/people/data/DataManager$Injector;->createCallLogQueryHelper(Landroid/content/Context;Ljava/util/function/BiConsumer;)Lcom/android/server/people/data/CallLogQueryHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->mCallLogQueryHelper:Lcom/android/server/people/data/CallLogQueryHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->mLastCallTimestamp:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;Lcom/android/server/people/data/DataManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager$CallLogContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic lambda$accept$0(Ljava/lang/String;Lcom/android/server/people/data/Event;Lcom/android/server/people/data/UserData;)V
    .locals 4

    invoke-virtual {p2}, Lcom/android/server/people/data/UserData;->getDefaultDialer()Lcom/android/server/people/data/PackageData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/people/data/ConversationStore;->getConversationByPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p0}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/people/data/Event;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->accept(Ljava/lang/String;Lcom/android/server/people/data/Event;)V

    return-void
.end method

.method public accept(Ljava/lang/String;Lcom/android/server/people/data/Event;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    new-instance v1, Lcom/android/server/people/data/DataManager$CallLogContentObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/android/server/people/data/DataManager$CallLogContentObserver$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/android/server/people/data/Event;)V

    invoke-static {v0, v1}, Lcom/android/server/people/data/DataManager;->access$1700(Lcom/android/server/people/data/DataManager;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->mCallLogQueryHelper:Lcom/android/server/people/data/CallLogQueryHelper;

    iget-wide v1, p0, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->mLastCallTimestamp:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/CallLogQueryHelper;->querySince(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->mCallLogQueryHelper:Lcom/android/server/people/data/CallLogQueryHelper;

    invoke-virtual {v0}, Lcom/android/server/people/data/CallLogQueryHelper;->getLastCallTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/people/data/DataManager$CallLogContentObserver;->mLastCallTimestamp:J

    :cond_0
    return-void
.end method
