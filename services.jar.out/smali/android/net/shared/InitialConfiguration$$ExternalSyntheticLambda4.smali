.class public final synthetic Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/net/InetAddress;


# direct methods
.method public synthetic constructor <init>(Ljava/net/InetAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda4;->f$0:Ljava/net/InetAddress;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda4;->f$0:Ljava/net/InetAddress;

    check-cast p1, Landroid/net/IpPrefix;

    invoke-static {p0, p1}, Landroid/net/shared/InitialConfiguration;->$r8$lambda$mq_qD1VmGhzZrsdg9JoSWASotGw(Ljava/net/InetAddress;Landroid/net/IpPrefix;)Z

    move-result p0

    return p0
.end method
