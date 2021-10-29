.class Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;
.super Ljava/lang/Object;
.source "ConnectivityModuleConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityModuleConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModuleServiceConnection"
.end annotation


# instance fields
.field private final mModuleServiceCallback:Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;

.field private final mPackageName:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/ConnectivityModuleConnector;


# direct methods
.method private constructor <init>(Landroid/net/ConnectivityModuleConnector;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;->this$0:Landroid/net/ConnectivityModuleConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;->mModuleServiceCallback:Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ConnectivityModuleConnector;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;Landroid/net/ConnectivityModuleConnector$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;-><init>(Landroid/net/ConnectivityModuleConnector;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;->this$0:Landroid/net/ConnectivityModuleConnector;

    const-string v1, "Networking module service connected"

    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector;->access$300(Landroid/net/ConnectivityModuleConnector;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;->mModuleServiceCallback:Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;

    invoke-interface {v0, p2}, Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;->onModuleServiceConnected(Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;->this$0:Landroid/net/ConnectivityModuleConnector;

    iget-object v1, p0, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;->mPackageName:Ljava/lang/String;

    const-string v2, "Lost network stack"

    invoke-static {v0, v2, v1}, Landroid/net/ConnectivityModuleConnector;->access$400(Landroid/net/ConnectivityModuleConnector;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
