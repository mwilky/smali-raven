.class public final Lcom/android/server/tare/Agent$Package;
.super Ljava/lang/Object;
.source "Agent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Package"
.end annotation


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final userId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/tare/Agent$Package;->userId:I

    iput-object p2, p0, Lcom/android/server/tare/Agent$Package;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/android/server/tare/Agent$Package;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/android/server/tare/Agent$Package;

    iget v2, p0, Lcom/android/server/tare/Agent$Package;->userId:I

    iget v3, p1, Lcom/android/server/tare/Agent$Package;->userId:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/android/server/tare/Agent$Package;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/tare/Agent$Package;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/tare/Agent$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget p0, p0, Lcom/android/server/tare/Agent$Package;->userId:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/server/tare/Agent$Package;->userId:I

    iget-object p0, p0, Lcom/android/server/tare/Agent$Package;->packageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
