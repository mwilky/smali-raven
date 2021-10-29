.class Landroid/net/NetworkFactoryLegacyImpl$1;
.super Landroid/net/NetworkProvider;
.source "NetworkFactoryLegacyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/NetworkFactoryLegacyImpl;->register(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/NetworkFactoryLegacyImpl;


# direct methods
.method constructor <init>(Landroid/net/NetworkFactoryLegacyImpl;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/NetworkFactoryLegacyImpl$1;->this$0:Landroid/net/NetworkFactoryLegacyImpl;

    invoke-direct {p0, p2, p3, p4}, Landroid/net/NetworkProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onNetworkRequestWithdrawn(Landroid/net/NetworkRequest;)V
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl$1;->this$0:Landroid/net/NetworkFactoryLegacyImpl;

    invoke-static {v0, p1}, Landroid/net/NetworkFactoryLegacyImpl;->access$000(Landroid/net/NetworkFactoryLegacyImpl;Landroid/net/NetworkRequest;)V

    return-void
.end method

.method public onNetworkRequested(Landroid/net/NetworkRequest;II)V
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl$1;->this$0:Landroid/net/NetworkFactoryLegacyImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/NetworkFactoryLegacyImpl;->handleAddRequest(Landroid/net/NetworkRequest;II)V

    return-void
.end method
