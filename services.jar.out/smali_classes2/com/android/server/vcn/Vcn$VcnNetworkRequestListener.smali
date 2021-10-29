.class Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;
.super Ljava/lang/Object;
.source "Vcn.java"

# interfaces
.implements Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/Vcn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VcnNetworkRequestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vcn/Vcn;


# direct methods
.method private constructor <init>(Lcom/android/server/vcn/Vcn;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;->this$0:Lcom/android/server/vcn/Vcn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vcn/Vcn;Lcom/android/server/vcn/Vcn$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;-><init>(Lcom/android/server/vcn/Vcn;)V

    return-void
.end method


# virtual methods
.method public onNetworkRequested(Landroid/net/NetworkRequest;)V
    .locals 2

    const-string v0, "Missing request"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;->this$0:Lcom/android/server/vcn/Vcn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/vcn/Vcn;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/Vcn;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
