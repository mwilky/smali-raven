.class Landroid/net/NetworkFactoryImpl$1;
.super Ljava/lang/Object;
.source "NetworkFactoryImpl.java"

# interfaces
.implements Landroid/net/NetworkProvider$NetworkOfferCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/NetworkFactoryImpl;


# direct methods
.method constructor <init>(Landroid/net/NetworkFactoryImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/net/NetworkFactoryImpl$1;->this$0:Landroid/net/NetworkFactoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkNeeded(Landroid/net/NetworkRequest;)V
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkFactoryImpl$1;->this$0:Landroid/net/NetworkFactoryImpl;

    invoke-static {v0, p1}, Landroid/net/NetworkFactoryImpl;->access$000(Landroid/net/NetworkFactoryImpl;Landroid/net/NetworkRequest;)V

    return-void
.end method

.method public onNetworkUnneeded(Landroid/net/NetworkRequest;)V
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkFactoryImpl$1;->this$0:Landroid/net/NetworkFactoryImpl;

    invoke-static {v0, p1}, Landroid/net/NetworkFactoryImpl;->access$100(Landroid/net/NetworkFactoryImpl;Landroid/net/NetworkRequest;)V

    return-void
.end method
