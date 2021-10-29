.class public Landroid/net/ipmemorystore/SameL3NetworkResponse;
.super Ljava/lang/Object;
.source "SameL3NetworkResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipmemorystore/SameL3NetworkResponse$NetworkSameness;
    }
.end annotation


# static fields
.field public static final NETWORK_DIFFERENT:I = 0x2

.field public static final NETWORK_NEVER_CONNECTED:I = 0x3

.field public static final NETWORK_SAME:I = 0x1


# instance fields
.field public final confidence:F

.field public final l2Key1:Ljava/lang/String;

.field public final l2Key2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;)V
    .locals 3

    iget-object v0, p1, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;->l2Key1:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;->l2Key2:Ljava/lang/String;

    iget v2, p1, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;->confidence:F

    invoke-direct {p0, v0, v1, v2}, Landroid/net/ipmemorystore/SameL3NetworkResponse;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    iput p3, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->confidence:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/net/ipmemorystore/SameL3NetworkResponse;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/ipmemorystore/SameL3NetworkResponse;

    iget-object v2, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->confidence:F

    iget v3, v0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->confidence:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final getNetworkSameness()I
    .locals 5

    iget v0, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->confidence:F

    float-to-double v1, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_2

    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x3

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->confidence:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toParcelable()Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;
    .locals 2

    new-instance v0, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;

    invoke-direct {v0}, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;-><init>()V

    iget-object v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;->l2Key1:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;->l2Key2:Ljava/lang/String;

    iget v1, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->confidence:F

    iput v1, v0, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;->confidence:F

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/net/ipmemorystore/SameL3NetworkResponse;->getNetworkSameness()I

    move-result v0

    const-string v1, "\""

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buggy sameness value ? \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" can\'t be tested against \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" different L3 network from \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" same L3 network as \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/ipmemorystore/SameL3NetworkResponse;->l2Key2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
