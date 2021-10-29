.class Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;
.super Ljava/lang/Object;
.source "VcnGatewayConnection.java"

# interfaces
.implements Lcom/android/server/vcn/VcnGatewayConnection$EventInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventMigrationCompletedInfo"
.end annotation


# instance fields
.field public final inTransform:Landroid/net/IpSecTransform;

.field public final outTransform:Landroid/net/IpSecTransform;


# direct methods
.method constructor <init>(Landroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/net/IpSecTransform;

    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;->inTransform:Landroid/net/IpSecTransform;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/net/IpSecTransform;

    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;->outTransform:Landroid/net/IpSecTransform;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;->inTransform:Landroid/net/IpSecTransform;

    iget-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;->inTransform:Landroid/net/IpSecTransform;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;->outTransform:Landroid/net/IpSecTransform;

    iget-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;->outTransform:Landroid/net/IpSecTransform;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;->inTransform:Landroid/net/IpSecTransform;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;->outTransform:Landroid/net/IpSecTransform;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
