.class Landroid/net/NetworkFactoryImpl$2;
.super Landroid/net/NetworkProvider;
.source "NetworkFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/NetworkFactoryImpl;->register(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/NetworkFactoryImpl;


# direct methods
.method constructor <init>(Landroid/net/NetworkFactoryImpl;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/NetworkFactoryImpl$2;->this$0:Landroid/net/NetworkFactoryImpl;

    invoke-direct {p0, p2, p3, p4}, Landroid/net/NetworkProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onNetworkRequestWithdrawn(Landroid/net/NetworkRequest;)V
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkFactoryImpl$2;->this$0:Landroid/net/NetworkFactoryImpl;

    invoke-static {v0, p1}, Landroid/net/NetworkFactoryImpl;->access$100(Landroid/net/NetworkFactoryImpl;Landroid/net/NetworkRequest;)V

    return-void
.end method

.method public onNetworkRequested(Landroid/net/NetworkRequest;II)V
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkFactoryImpl$2;->this$0:Landroid/net/NetworkFactoryImpl;

    invoke-static {v0, p1}, Landroid/net/NetworkFactoryImpl;->access$000(Landroid/net/NetworkFactoryImpl;Landroid/net/NetworkRequest;)V

    return-void
.end method
