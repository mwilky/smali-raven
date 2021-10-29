.class final Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;
.super Ljava/lang/Object;
.source "DockObserver.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DreamlinerServiceConn"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$000(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$302(Z)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$200(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V

    return-void
.end method
