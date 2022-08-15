.class public Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;
.super Landroid/net/NetworkAgent;
.source "VcnGatewayConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;-><init>(Lcom/android/server/vcn/VcnContext;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

.field public final synthetic val$networkUnwantedCallback:Ljava/util/function/Consumer;

.field public final synthetic val$validationStatusCallback:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;->this$0:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;->val$networkUnwantedCallback:Ljava/util/function/Consumer;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;->val$validationStatusCallback:Ljava/util/function/Consumer;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V

    return-void
.end method


# virtual methods
.method public onNetworkUnwanted()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;->val$networkUnwantedCallback:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;->this$0:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onValidationStatus(ILandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;->val$validationStatusCallback:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
