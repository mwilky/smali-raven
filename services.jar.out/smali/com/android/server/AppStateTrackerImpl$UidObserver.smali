.class final Lcom/android/server/AppStateTrackerImpl$UidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "AppStateTrackerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTrackerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UidObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$UidObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AppStateTrackerImpl;Lcom/android/server/AppStateTrackerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/AppStateTrackerImpl$UidObserver;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$UidObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->access$200(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->onUidActive(I)V

    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onUidGone(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$UidObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->access$200(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->onUidGone(IZ)V

    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$UidObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->access$200(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->onUidIdle(IZ)V

    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .locals 0

    return-void
.end method
