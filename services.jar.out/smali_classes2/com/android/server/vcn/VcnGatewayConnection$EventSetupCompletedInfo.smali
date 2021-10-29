.class Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;
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
    name = "EventSetupCompletedInfo"
.end annotation


# instance fields
.field public final childSessionConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;


# direct methods
.method constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;->childSessionConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;->childSessionConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    iget-object v2, v0, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;->childSessionConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;->childSessionConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
