.class public Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;
.super Ljava/lang/Object;
.source "Vcn.java"

# interfaces
.implements Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/Vcn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VcnNetworkRequestListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/Vcn;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/Vcn;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;->this$0:Lcom/android/server/vcn/Vcn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/vcn/Vcn;Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;-><init>(Lcom/android/server/vcn/Vcn;)V

    return-void
.end method


# virtual methods
.method public onNetworkRequested(Landroid/net/NetworkRequest;)V
    .locals 1

    const-string v0, "Missing request"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;->this$0:Lcom/android/server/vcn/Vcn;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
