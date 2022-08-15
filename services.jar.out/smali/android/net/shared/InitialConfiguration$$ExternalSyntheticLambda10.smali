.class public final synthetic Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/net/LinkAddress;


# direct methods
.method public synthetic constructor <init>(Landroid/net/LinkAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda10;->f$0:Landroid/net/LinkAddress;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda10;->f$0:Landroid/net/LinkAddress;

    check-cast p1, Landroid/net/LinkAddress;

    invoke-static {p0, p1}, Landroid/net/shared/InitialConfiguration;->$r8$lambda$qX3MXtYCJYMXN7y08JcGTzwAn5g(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z

    move-result p0

    return p0
.end method
