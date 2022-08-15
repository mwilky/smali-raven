.class public final synthetic Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/net/IpPrefix;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IpPrefix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda11;->f$0:Landroid/net/IpPrefix;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda11;->f$0:Landroid/net/IpPrefix;

    check-cast p1, Landroid/net/RouteInfo;

    invoke-static {p0, p1}, Landroid/net/shared/InitialConfiguration;->$r8$lambda$j6zNBSJodSTsS1cvbZoOHEWq3CY(Landroid/net/IpPrefix;Landroid/net/RouteInfo;)Z

    move-result p0

    return p0
.end method
