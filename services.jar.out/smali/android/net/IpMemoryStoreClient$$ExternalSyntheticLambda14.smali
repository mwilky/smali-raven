.class public final synthetic Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/net/IpMemoryStoreClient;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IpMemoryStoreClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda14;->f$0:Landroid/net/IpMemoryStoreClient;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda14;->f$0:Landroid/net/IpMemoryStoreClient;

    check-cast p1, Landroid/net/IIpMemoryStore;

    invoke-static {p0, p1}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$tSDytuUUtKrgkQEXV3qhJ-Pu12c(Landroid/net/IpMemoryStoreClient;Landroid/net/IIpMemoryStore;)V

    return-void
.end method
