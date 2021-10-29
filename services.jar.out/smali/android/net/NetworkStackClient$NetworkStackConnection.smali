.class Landroid/net/NetworkStackClient$NetworkStackConnection;
.super Ljava/lang/Object;
.source "NetworkStackClient.java"

# interfaces
.implements Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStackClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStackConnection"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/NetworkStackClient;


# direct methods
.method private constructor <init>(Landroid/net/NetworkStackClient;)V
    .locals 0

    iput-object p1, p0, Landroid/net/NetworkStackClient$NetworkStackConnection;->this$0:Landroid/net/NetworkStackClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/NetworkStackClient;Landroid/net/NetworkStackClient$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/NetworkStackClient$NetworkStackConnection;-><init>(Landroid/net/NetworkStackClient;)V

    return-void
.end method


# virtual methods
.method public onModuleServiceConnected(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Landroid/net/NetworkStackClient$NetworkStackConnection;->this$0:Landroid/net/NetworkStackClient;

    const-string v1, "Network stack service connected"

    invoke-static {v0, v1}, Landroid/net/NetworkStackClient;->access$100(Landroid/net/NetworkStackClient;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/NetworkStackClient$NetworkStackConnection;->this$0:Landroid/net/NetworkStackClient;

    invoke-static {v0, p1}, Landroid/net/NetworkStackClient;->access$200(Landroid/net/NetworkStackClient;Landroid/os/IBinder;)V

    return-void
.end method
